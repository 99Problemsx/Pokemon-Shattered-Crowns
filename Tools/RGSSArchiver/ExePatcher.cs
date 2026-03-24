// =============================================================================
// ExePatcher — Patches mkxp-z Game.exe to use a custom RGSSAD encryption key
// =============================================================================
// Replaces the well-known RGSSAD initial key in the binary so that standard
// decrypter tools (RPG Maker Decrypter, etc.) cannot read the archive.
//
// The key advancement formula (key * 7 + 3) is NOT changed — only the seed.
//
// NOT patched (PhysFS needs these for archive format detection):
//   Magic header:  "RGSSAD"    — stays unchanged
//   File extension: ".rgssad"  — stays unchanged
// =============================================================================
using System;
using System.IO;

namespace RGSSArchiver;

public static class ExePatcher
{
    /// <summary>
    /// The original mkxp-z / RPG Maker XP encryption key (all decrypter tools use this).
    /// </summary>
    public const uint ORIGINAL_KEY = 0xDEADCAFE;

    /// <summary>
    /// Patches the encryption key in a mkxp-z Game.exe binary.
    /// </summary>
    /// <param name="inputPath">Path to the Game.exe to patch.</param>
    /// <param name="outputPath">Output path (can be the same as input for in-place patching).</param>
    /// <param name="customKey">The new encryption key to write.</param>
    /// <param name="originalKey">The key to search for in the binary (default: 0xDEADCAFE).</param>
    public static PatchResult Patch(string inputPath, string outputPath, uint customKey, uint originalKey = ORIGINAL_KEY)
    {
        var data = File.ReadAllBytes(inputPath);
        var result = new PatchResult();

        byte[] origKeyBytes = BitConverter.GetBytes(originalKey);
        byte[] newKeyBytes  = BitConverter.GetBytes(customKey);
        result.KeyOffset = FindAndReplace(data, origKeyBytes, newKeyBytes);

        if (result.KeyOffset < 0)
            throw new InvalidOperationException(
                $"Could not find key 0x{originalKey:X8} in Game.exe — is this a supported mkxp-z binary?");

        File.WriteAllBytes(outputPath, data);
        result.OriginalKey = originalKey;
        result.CustomKey = customKey;
        return result;
    }

    /// <summary>
    /// Checks if the binary already contains the given custom key.
    /// </summary>
    public static bool IsPatched(string exePath, uint customKey)
    {
        var data = File.ReadAllBytes(exePath);
        byte[] customKeyBytes = BitConverter.GetBytes(customKey);
        return FindPattern(data, customKeyBytes) >= 0;
    }

    private static int FindAndReplace(byte[] data, byte[] pattern, byte[] replacement)
    {
        if (pattern.Length != replacement.Length)
            throw new ArgumentException("Pattern and replacement must be same length.");

        int offset = FindPattern(data, pattern);
        if (offset < 0) return -1;

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
        public uint OriginalKey { get; set; }
        public uint CustomKey { get; set; }
    }
}
