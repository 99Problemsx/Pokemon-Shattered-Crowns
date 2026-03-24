// =============================================================================
// ArchiveProtector — AES-256-CBC encryption layer for RGSSAD archives
// =============================================================================
// Wraps a standard RGSSAD archive in an AES-encrypted container (.scd)
// that RPG Maker Decrypter tools cannot recognize or decrypt.
//
// File format:  [6 bytes: "SCDPKG" signature]
//               [1 byte : version (1)]
//               [16 bytes: random AES IV]
//               [rest   : AES-256-CBC encrypted RGSSAD data, PKCS7 padded]
// =============================================================================
using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace RGSSArchiver;

public static class ArchiveProtector
{
    private static readonly byte[] SIGNATURE = { 0x53, 0x43, 0x44, 0x50, 0x4B, 0x47 }; // "SCDPKG"
    private const byte FORMAT_VERSION = 1;
    private const int KEY_BYTES = 32;   // AES-256
    private const int IV_BYTES = 16;
    private const int PBKDF2_ITERATIONS = 100_000;
    private const int BUFFER_SIZE = 4 * 1024 * 1024; // 4 MB stream buffer

    // Fixed salt — unique per game, not secret (just prevents rainbow tables)
    private static readonly byte[] SALT =
    {
        0x53, 0x68, 0x61, 0x74, 0x74, 0x65, 0x72, 0x65,
        0x64, 0x43, 0x72, 0x6F, 0x77, 0x6E, 0x73, 0x21  // "ShatteredCrowns!"
    };

    // -------------------------------------------------------------------------
    // Default passphrase — assembled at runtime to resist casual string search
    // -------------------------------------------------------------------------
    public static string DefaultPassphrase()
    {
        var p = new[] { "Cr0wns", "_Sh4tt3r3d_", "2024!", "PKG_" };
        return string.Concat(p[3], p[1], p[0], "_", p[2]);
    }

    // -------------------------------------------------------------------------
    // Key derivation
    // -------------------------------------------------------------------------
    internal static byte[] DeriveKey(string passphrase)
    {
        using var kdf = new Rfc2898DeriveBytes(
            Encoding.UTF8.GetBytes(passphrase),
            SALT,
            PBKDF2_ITERATIONS,
            HashAlgorithmName.SHA256);
        return kdf.GetBytes(KEY_BYTES);
    }

    // -------------------------------------------------------------------------
    // Encrypt: RGSSAD → .scd
    // -------------------------------------------------------------------------
    public static void Encrypt(string inputPath, string outputPath, string? passphrase = null)
    {
        passphrase ??= DefaultPassphrase();
        var key = DeriveKey(passphrase);
        var iv = RandomNumberGenerator.GetBytes(IV_BYTES);

        using var aes = Aes.Create();
        aes.Key = key;
        aes.IV = iv;
        aes.Mode = CipherMode.CBC;
        aes.Padding = PaddingMode.PKCS7;

        using var inputFs = new FileStream(inputPath, FileMode.Open, FileAccess.Read, FileShare.Read, BUFFER_SIZE);
        using var outputFs = new FileStream(outputPath, FileMode.Create, FileAccess.Write, FileShare.None, BUFFER_SIZE);

        // Write header
        outputFs.Write(SIGNATURE);
        outputFs.WriteByte(FORMAT_VERSION);
        outputFs.Write(iv);

        // Write encrypted payload
        using var encryptor = aes.CreateEncryptor();
        using var cryptoStream = new CryptoStream(outputFs, encryptor, CryptoStreamMode.Write);
        inputFs.CopyTo(cryptoStream, BUFFER_SIZE);
    }

    // -------------------------------------------------------------------------
    // Decrypt: .scd → RGSSAD
    // -------------------------------------------------------------------------
    public static void Decrypt(string inputPath, string outputPath, string? passphrase = null)
    {
        passphrase ??= DefaultPassphrase();

        using var inputFs = new FileStream(inputPath, FileMode.Open, FileAccess.Read, FileShare.Read, BUFFER_SIZE);

        // Verify signature
        Span<byte> sig = stackalloc byte[SIGNATURE.Length];
        inputFs.ReadExactly(sig);
        if (!sig.SequenceEqual(SIGNATURE))
            throw new InvalidDataException("Not a valid SCD archive (bad signature).");

        int version = inputFs.ReadByte();
        if (version != FORMAT_VERSION)
            throw new InvalidDataException($"Unsupported SCD version: {version}");

        // Read IV
        var iv = new byte[IV_BYTES];
        inputFs.ReadExactly(iv);

        // Derive key and decrypt
        var key = DeriveKey(passphrase);

        using var aes = Aes.Create();
        aes.Key = key;
        aes.IV = iv;
        aes.Mode = CipherMode.CBC;
        aes.Padding = PaddingMode.PKCS7;

        using var outputFs = new FileStream(outputPath, FileMode.Create, FileAccess.Write, FileShare.None, BUFFER_SIZE);
        using var decryptor = aes.CreateDecryptor();
        using var cryptoStream = new CryptoStream(inputFs, decryptor, CryptoStreamMode.Read);
        cryptoStream.CopyTo(outputFs, BUFFER_SIZE);
    }

    // -------------------------------------------------------------------------
    // Quick check if file has SCD signature
    // -------------------------------------------------------------------------
    public static bool IsScdFile(string path)
    {
        if (!File.Exists(path)) return false;
        try
        {
            using var fs = File.OpenRead(path);
            if (fs.Length < SIGNATURE.Length + 1 + IV_BYTES) return false;
            Span<byte> sig = stackalloc byte[SIGNATURE.Length];
            fs.ReadExactly(sig);
            return sig.SequenceEqual(SIGNATURE);
        }
        catch { return false; }
    }
}
