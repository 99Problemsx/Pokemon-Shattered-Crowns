// =============================================================================
// RgssadWriter — Writes RGSSAD v1 encrypted archives
//
// RGSSAD v1 Format:
//   Header  : "RGSSAD\0" + version byte (0x01)
//   Key     : starts at 0xDEADCAFE, advances via key = key * 7 + 3
//   Per entry:
//     name_len  (4 bytes)  XOR key, advance key
//     name      (N bytes)  each byte XOR (key & 0xFF), advance key per byte
//     data_size (4 bytes)  XOR key, advance key  →  key is now "startMagic"
//     data      (M bytes)  encrypted in 4-byte blocks using a COPY of key
//                          (entry-level key does NOT advance through data;
//                           next entry reuses startMagic)
// =============================================================================
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace RGSSArchiver;

public static class RgssadCrypto
{
    public const uint INITIAL_KEY = 0xDEADCAFE;

    public static uint Advance(uint key) => unchecked(key * 7 + 3);
}

/// <summary>
/// Creates RGSSAD v1 encrypted archive files.
/// </summary>
public sealed class RgssadWriter : IDisposable
{
    private readonly BinaryWriter _bw;
    private uint _key;

    public int EntryCount { get; private set; }
    public long TotalBytes { get; private set; }

    public RgssadWriter(Stream output)
    {
        _bw = new BinaryWriter(output, Encoding.UTF8, leaveOpen: true);
        _key = RgssadCrypto.INITIAL_KEY;
        // Header: "RGSSAD\0" + version 1
        _bw.Write("RGSSAD\0"u8);
        _bw.Write((byte)1);
    }

    /// <summary>
    /// Adds a file entry to the archive.
    /// </summary>
    /// <param name="relativePath">Backslash-separated path as stored in the archive.</param>
    /// <param name="fileData">Raw file content.</param>
    public void AddEntry(string relativePath, byte[] fileData)
    {
        byte[] nameBytes = Encoding.UTF8.GetBytes(relativePath);

        // — Encrypted name length —
        _bw.Write(unchecked((uint)nameBytes.Length ^ _key));
        _key = RgssadCrypto.Advance(_key);

        // — Encrypted name (byte by byte) —
        foreach (byte b in nameBytes)
        {
            _bw.Write((byte)(b ^ (_key & 0xFF)));
            _key = RgssadCrypto.Advance(_key);
        }

        // — Encrypted data size —
        _bw.Write(unchecked((uint)fileData.Length ^ _key));
        _key = RgssadCrypto.Advance(_key);

        // mkxp-z's archive scanner stores the current key as startMagic and
        // seeks past the raw data bytes WITHOUT advancing the key.  The next
        // entry's header therefore reuses this same key value.  Data blocks
        // are encrypted with a local copy so the entry-level key stays put.
        uint dataKey = _key;

        // — Encrypted data (write exactly fileData.Length bytes) —
        int offset = 0;
        while (offset < fileData.Length)
        {
            int remaining = Math.Min(4, fileData.Length - offset);
            uint block = 0;
            for (int i = 0; i < remaining; i++)
                block |= (uint)fileData[offset + i] << (i * 8);

            block ^= dataKey;

            // Write only the actual remaining bytes (no padding)
            for (int i = 0; i < remaining; i++)
                _bw.Write((byte)((block >> (i * 8)) & 0xFF));

            dataKey = RgssadCrypto.Advance(dataKey);
            offset += remaining;
        }

        EntryCount++;
        TotalBytes += fileData.Length;
    }

    public void Dispose() => _bw.Dispose();
}

/// <summary>
/// Reads and decrypts RGSSAD v1 archive files.
/// </summary>
public static class RgssadReader
{
    public record ArchiveEntry(string Name, byte[] Data);

    /// <summary>
    /// Reads all entries from an RGSSAD v1 archive.
    /// </summary>
    public static List<ArchiveEntry> ReadAll(Stream input)
    {
        using var br = new BinaryReader(input, Encoding.UTF8, leaveOpen: true);

        // Validate header
        byte[] magic = br.ReadBytes(7);
        string magicStr = Encoding.ASCII.GetString(magic);
        if (magicStr != "RGSSAD\0")
            throw new InvalidDataException($"Invalid RGSSAD header: '{magicStr}'");

        byte version = br.ReadByte();
        if (version != 1)
            throw new InvalidDataException($"Unsupported RGSSAD version: {version}");

        var entries = new List<ArchiveEntry>();
        uint key = RgssadCrypto.INITIAL_KEY;

        while (input.Position < input.Length)
        {
            // — Decrypt name length —
            uint encNameLen = br.ReadUInt32();
            int nameLen = (int)(encNameLen ^ key);
            key = RgssadCrypto.Advance(key);

            if (nameLen <= 0 || nameLen > 1024)
                break; // End of archive or corrupt data

            // — Decrypt name (byte by byte) —
            var nameBytes = new byte[nameLen];
            for (int i = 0; i < nameLen; i++)
            {
                nameBytes[i] = (byte)(br.ReadByte() ^ (key & 0xFF));
                key = RgssadCrypto.Advance(key);
            }
            string name = Encoding.UTF8.GetString(nameBytes);

            // — Decrypt data size —
            uint encDataSize = br.ReadUInt32();
            int dataSize = (int)(encDataSize ^ key);
            key = RgssadCrypto.Advance(key);

            // Data key is a snapshot — the entry-level key does NOT advance
            // through data blocks (matches mkxp-z's archive scanner behaviour).
            uint dataKey = key;

            var data = new byte[dataSize];
            int offset = 0;
            while (offset < dataSize)
            {
                int remaining = Math.Min(4, dataSize - offset);

                // Read only the actual bytes on disk (no padding)
                uint encBlock = 0;
                for (int i = 0; i < remaining; i++)
                    encBlock |= (uint)br.ReadByte() << (i * 8);

                uint decBlock = encBlock ^ dataKey;

                for (int i = 0; i < remaining; i++)
                    data[offset + i] = (byte)((decBlock >> (i * 8)) & 0xFF);

                dataKey = RgssadCrypto.Advance(dataKey);
                offset += remaining;
            }

            entries.Add(new ArchiveEntry(name, data));
        }

        return entries;
    }

    /// <summary>
    /// Reads all entries from an RGSSAD v1 archive file.
    /// </summary>
    public static List<ArchiveEntry> ReadAll(string filePath)
    {
        using var fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
        return ReadAll(fs);
    }
}
