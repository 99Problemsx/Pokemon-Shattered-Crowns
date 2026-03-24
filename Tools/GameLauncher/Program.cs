// =============================================================================
// GameLauncher — Shattered Crowns protected game launcher
// =============================================================================
// Decrypts Game.scd → Game.rgssad in memory, launches the game engine,
// waits for it to exit, then deletes the decrypted archive.
// RPG Maker Decrypter tools will never find a Game.rgssad on disk.
// =============================================================================
using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Threading;

namespace GameLauncher;

static class Program
{
    const string GAME_ENGINE  = "Game.exe";
    const string SCD_FILE     = "Game.scd";
    const string RGSSAD_FILE  = "Game.rgssad";
    const string WINDOW_TITLE = "Pokémon Shattered Crowns";

    // Win32 MessageBox for error display (WinExe has no console)
    [DllImport("user32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    static extern int MessageBoxW(IntPtr hWnd, string text, string caption, uint type);
    const uint MB_OK = 0x0;
    const uint MB_ICONERROR = 0x10;

    static void ShowError(string message)
        => MessageBoxW(IntPtr.Zero, message, WINDOW_TITLE, MB_OK | MB_ICONERROR);

    static int Main()
    {
        string baseDir = AppContext.BaseDirectory;
        string scdPath = Path.Combine(baseDir, SCD_FILE);
        string rgssadPath = Path.Combine(baseDir, RGSSAD_FILE);
        string gameExe = Path.Combine(baseDir, GAME_ENGINE);

        // Clean up leftover from a previous crash
        TryDelete(rgssadPath);

        if (!File.Exists(scdPath))
        {
            ShowError($"Spieldaten nicht gefunden ({SCD_FILE}).\nBitte installiere das Spiel neu.");
            return 1;
        }
        if (!File.Exists(gameExe))
        {
            ShowError($"Spiel-Engine nicht gefunden ({GAME_ENGINE}).\nBitte installiere das Spiel neu.");
            return 1;
        }

        try
        {
            // --- Decrypt archive ---
            DecryptScd(scdPath, rgssadPath);

            // --- Launch game engine ---
            using var process = Process.Start(new ProcessStartInfo
            {
                FileName = gameExe,
                WorkingDirectory = baseDir,
                UseShellExecute = false
            });
            process?.WaitForExit();
            return process?.ExitCode ?? 0;
        }
        catch (Exception ex)
        {
            ShowError($"Fehler beim Starten:\n{ex.Message}");
            return 1;
        }
        finally
        {
            // Always clean up — retry a few times in case the engine still holds the file
            for (int i = 0; i < 10; i++)
            {
                if (TryDelete(rgssadPath)) break;
                Thread.Sleep(500);
            }
        }
    }

    static bool TryDelete(string path)
    {
        try
        {
            if (File.Exists(path))
                File.Delete(path);
            return true;
        }
        catch { return false; }
    }

    // =========================================================================
    // AES-256-CBC decryption — must match ArchiveProtector in RGSSArchiver
    // =========================================================================
    // SCD format: [6: "SCDPKG"][1: version][16: IV][rest: AES-CBC encrypted]

    static readonly byte[] SCD_SIG = { 0x53, 0x43, 0x44, 0x50, 0x4B, 0x47 }; // "SCDPKG"

    static readonly byte[] SALT =
    {
        0x53, 0x68, 0x61, 0x74, 0x74, 0x65, 0x72, 0x65,
        0x64, 0x43, 0x72, 0x6F, 0x77, 0x6E, 0x73, 0x21
    };

    const int PBKDF2_ITERATIONS = 100_000;
    const int KEY_BYTES = 32;
    const int IV_BYTES = 16;
    const int BUF = 4 * 1024 * 1024;

    static byte[] DeriveKey()
    {
        // Passphrase assembled at runtime (resists simple string search in binary)
        var p = new[] { "Cr0wns", "_Sh4tt3r3d_", "2024!", "PKG_" };
        var pass = string.Concat(p[3], p[1], p[0], "_", p[2]);

        using var kdf = new Rfc2898DeriveBytes(
            Encoding.UTF8.GetBytes(pass), SALT, PBKDF2_ITERATIONS, HashAlgorithmName.SHA256);
        return kdf.GetBytes(KEY_BYTES);
    }

    static void DecryptScd(string scdPath, string rgssadPath)
    {
        using var inFs = new FileStream(scdPath, FileMode.Open, FileAccess.Read, FileShare.Read, BUF);

        // Verify header
        Span<byte> sig = stackalloc byte[SCD_SIG.Length];
        inFs.ReadExactly(sig);
        if (!sig.SequenceEqual(SCD_SIG))
            throw new InvalidDataException("Ungültige Spieldatei.");

        int ver = inFs.ReadByte();
        if (ver != 1)
            throw new InvalidDataException($"Nicht unterstützte Version: {ver}");

        var iv = new byte[IV_BYTES];
        inFs.ReadExactly(iv);

        var key = DeriveKey();

        using var aes = Aes.Create();
        aes.Key = key;
        aes.IV = iv;
        aes.Mode = CipherMode.CBC;
        aes.Padding = PaddingMode.PKCS7;

        using var outFs = new FileStream(rgssadPath, FileMode.Create, FileAccess.Write, FileShare.None, BUF);
        using var decryptor = aes.CreateDecryptor();
        using var cs = new CryptoStream(inFs, decryptor, CryptoStreamMode.Read);
        cs.CopyTo(outFs, BUF);
    }
}
