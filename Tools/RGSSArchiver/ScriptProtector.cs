// =============================================================================
// ScriptProtector — RC4 stream cipher for preload script encryption
// =============================================================================
// Encrypts Ruby preload scripts so they can be decrypted at runtime by a
// minimal pure-Ruby RC4 implementation (no OpenSSL dependency in mkxp-z).
//
// File format:  [5 bytes: "SCSCR" signature]
//               [1 byte : version (1)]
//               [rest   : RC4-encrypted data]
//
// Key: 32 raw bytes passed as hex string (e.g. 64 hex chars).
// =============================================================================
using System;
using System.IO;

namespace RGSSArchiver;

public static class ScriptProtector
{
    private static readonly byte[] SIGNATURE = { 0x53, 0x43, 0x53, 0x43, 0x52 }; // "SCSCR"
    private const byte FORMAT_VERSION = 1;

    /// <summary>RC4 (ARC4) stream cipher — symmetric encrypt/decrypt.</summary>
    public static byte[] RC4(byte[] key, byte[] data)
    {
        // KSA — Key Scheduling Algorithm
        byte[] S = new byte[256];
        for (int i = 0; i < 256; i++) S[i] = (byte)i;
        int j = 0;
        for (int i = 0; i < 256; i++)
        {
            j = (j + S[i] + key[i % key.Length]) & 0xFF;
            (S[i], S[j]) = (S[j], S[i]);
        }

        // PRGA — Pseudo-Random Generation Algorithm
        byte[] output = new byte[data.Length];
        int a = 0, b = 0;
        for (int k = 0; k < data.Length; k++)
        {
            a = (a + 1) & 0xFF;
            b = (b + S[a]) & 0xFF;
            (S[a], S[b]) = (S[b], S[a]);
            output[k] = (byte)(data[k] ^ S[(S[a] + S[b]) & 0xFF]);
        }
        return output;
    }

    public static void Encrypt(string inputPath, string outputPath, byte[] key)
    {
        byte[] data = File.ReadAllBytes(inputPath);
        byte[] encrypted = RC4(key, data);

        using var fs = new FileStream(outputPath, FileMode.Create, FileAccess.Write);
        fs.Write(SIGNATURE);
        fs.WriteByte(FORMAT_VERSION);
        fs.Write(encrypted);
    }

    public static void Decrypt(string inputPath, string outputPath, byte[] key)
    {
        using var fs = new FileStream(inputPath, FileMode.Open, FileAccess.Read);

        Span<byte> sig = stackalloc byte[SIGNATURE.Length];
        fs.ReadExactly(sig);
        if (!sig.SequenceEqual(SIGNATURE))
            throw new InvalidDataException("Not a valid SCSCR file (bad signature).");

        int version = fs.ReadByte();
        if (version != FORMAT_VERSION)
            throw new InvalidDataException($"Unsupported SCSCR version: {version}");

        byte[] encrypted = new byte[fs.Length - SIGNATURE.Length - 1];
        fs.ReadExactly(encrypted);

        byte[] decrypted = RC4(key, encrypted);
        File.WriteAllBytes(outputPath, decrypted);
    }

    public static bool IsScriptFile(string path)
    {
        if (!File.Exists(path)) return false;
        try
        {
            using var fs = File.OpenRead(path);
            if (fs.Length < SIGNATURE.Length + 1) return false;
            Span<byte> sig = stackalloc byte[SIGNATURE.Length];
            fs.ReadExactly(sig);
            return sig.SequenceEqual(SIGNATURE);
        }
        catch { return false; }
    }

    public static byte[] ParseHexKey(string hex)
    {
        if (hex.StartsWith("0x", StringComparison.OrdinalIgnoreCase))
            hex = hex[2..];
        if (hex.Length % 2 != 0)
            throw new ArgumentException($"Hex key must have even length, got {hex.Length}");
        byte[] key = new byte[hex.Length / 2];
        for (int i = 0; i < key.Length; i++)
            key[i] = Convert.ToByte(hex.Substring(i * 2, 2), 16);
        return key;
    }
}
