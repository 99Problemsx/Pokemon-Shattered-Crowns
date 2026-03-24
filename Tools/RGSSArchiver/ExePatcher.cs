// =============================================================================
// ExePatcher — Patches mkxp-z Game.exe to use custom RGSSAD encryption
// =============================================================================
// Replaces the well-known RGSSAD initial key in the binary so that standard
// decrypter tools (RPG Maker Decrypter, etc.) cannot read the archive.
//
// Patched values:
//   Initial key:   0xDEADCAFE  → 0xB7A3C1D9  (XOR encryption start key)
//
// NOT patched (PhysFS needs these for archive format detection):
//   Magic header:  "RGSSAD"    — stays unchanged (PhysFS archiver matching)
//   File extension: ".rgssad"  — stays unchanged (PhysFS file detection)
//
// The key advancement formula (key * 7 + 3) is NOT changed — only the seed.
// =============================================================================
using System;
using System.IO;

namespace RGSSArchiver;

public static class ExePatcher
{
    // -------------------------------------------------------------------------
    // Original mkxp-z encryption key (well-known, all decrypter tools use this)
    // -------------------------------------------------------------------------
    public const uint ORIGINAL_KEY = 0xDEADCAFE;

    // -------------------------------------------------------------------------
    // Custom constants (Shattered Crowns — no tool knows these)
    // -------------------------------------------------------------------------
    public const uint CUSTOM_KEY = 0xB7A3C1D9;

    // -------------------------------------------------------------------------
    // Patch Game.exe: replace only the encryption key.
    // Magic header and extension stay unchanged — PhysFS needs them for
    // archive format detection and mounting. Protection comes solely from
    // the changed key: decrypter tools hardcode 0xDEADCAFE and get garbage.
    // -------------------------------------------------------------------------
    public static PatchResult Patch(string inputPath, string outputPath)
    {
        var data = File.ReadAllBytes(inputPath);
        var result = new PatchResult();

        // Patch initial key (0xDEADCAFE → custom, little-endian)
        byte[] origKeyBytes = BitConverter.GetBytes(ORIGINAL_KEY);   // FE CA AD DE
        byte[] newKeyBytes  = BitConverter.GetBytes(CUSTOM_KEY);     // D9 C1 A3 B7
        result.KeyOffset = FindAndReplace(data, origKeyBytes, newKeyBytes);

        if (result.KeyOffset < 0)
            throw new InvalidOperationException(
                "Could not find DEADCAFE key in Game.exe — is this a supported mkxp-z binary?");

        File.WriteAllBytes(outputPath, data);
        return result;
    }

    // -------------------------------------------------------------------------
    // Verify a binary has already been patched
    // -------------------------------------------------------------------------
    public static bool IsPatched(string exePath)
    {
        var data = File.ReadAllBytes(exePath);
        byte[] customKeyBytes = BitConverter.GetBytes(CUSTOM_KEY);
        return FindPattern(data, customKeyBytes) >= 0;
    }

    // -------------------------------------------------------------------------
    // Find a byte pattern and replace it. Returns the offset or -1.
    // -------------------------------------------------------------------------
    private static int FindAndReplace(byte[] data, byte[] pattern, byte[] replacement)
    {
        if (pattern.Length != replacement.Length)
            throw new ArgumentException("Pattern and replacement must be same length.");

        int offset = FindPattern(data, pattern);
        if (offset < 0) return -1;

        // Verify there's only ONE occurrence (safety check)
        int second = FindPattern(data, pattern, offset + 1);
        if (second >= 0)
            throw new InvalidOperationException(
                $"Multiple occurrences of pattern found at offsets 0x{offset:X} and 0x{second:X}. " +
                "Cannot safely patch — aborting.");

        Array.Copy(replacement, 0, data, offset, replacement.Length);
        return offset;
    }

    private static int FindPattern(byte[] data, byte[] pattern, int startIndex = 0)
    {
        for (int i = startIndex; i <= data.Length - pattern.Length; i++)
        {
            bool match = true;
            for (int j = 0; j < pattern.Length; j++)
            {
                if (data[i + j] != pattern[j])
                {
                    match = false;
                    break;
                }
            }
            if (match) return i;
        }
        return -1;
    }

    public record PatchResult
    {
        public int KeyOffset { get; set; } = -1;
    }
}
