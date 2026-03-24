using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Xunit;

namespace RGSSArchiver.Tests;

public class RgssadCryptoTests
{
    [Fact]
    public void InitialKey_IsDeadCafe()
    {
        Assert.Equal(0xDEADCAFEu, RgssadCrypto.INITIAL_KEY);
    }

    [Fact]
    public void Advance_FirstStep()
    {
        // 0xDEADCAFE * 7 + 3 — computed with unchecked uint arithmetic
        uint expected = unchecked(0xDEADCAFE * 7 + 3);
        Assert.Equal(expected, RgssadCrypto.Advance(0xDEADCAFE));
    }

    [Fact]
    public void Advance_IsConsistent()
    {
        uint key = RgssadCrypto.INITIAL_KEY;
        var seen = new HashSet<uint>();
        // Run 1000 steps — should never cycle back within that range
        for (int i = 0; i < 1000; i++)
        {
            key = RgssadCrypto.Advance(key);
            Assert.True(seen.Add(key), $"Key repeated at step {i + 1}");
        }
    }

    [Fact]
    public void Advance_Zero_ReturnsThree()
    {
        Assert.Equal(3u, RgssadCrypto.Advance(0));
    }

    [Fact]
    public void Advance_MaxValue_Wraps()
    {
        // uint.MaxValue * 7 + 3 should wrap via unchecked
        uint result = RgssadCrypto.Advance(uint.MaxValue);
        uint expected = unchecked(uint.MaxValue * 7 + 3);
        Assert.Equal(expected, result);
    }
}

public class RgssadHeaderTests
{
    [Fact]
    public void Header_IsCorrectBytes()
    {
        using var ms = new MemoryStream();
        using (var writer = new RgssadWriter(ms))
        {
            // Writer writes header immediately on construction
        }

        byte[] data = ms.ToArray();
        // "RGSSAD\0" = 7 bytes + version byte = 8 bytes total
        Assert.True(data.Length >= 8);
        Assert.Equal((byte)'R', data[0]);
        Assert.Equal((byte)'G', data[1]);
        Assert.Equal((byte)'S', data[2]);
        Assert.Equal((byte)'S', data[3]);
        Assert.Equal((byte)'A', data[4]);
        Assert.Equal((byte)'D', data[5]);
        Assert.Equal(0, data[6]); // null terminator
        Assert.Equal(1, data[7]); // version 1
    }

    [Fact]
    public void EmptyArchive_HasOnlyHeader()
    {
        using var ms = new MemoryStream();
        using (var writer = new RgssadWriter(ms))
        {
            // No entries added
        }

        Assert.Equal(8, ms.ToArray().Length);
    }

    [Fact]
    public void Reader_RejectsInvalidMagic()
    {
        byte[] bad = Encoding.ASCII.GetBytes("INVALID\x01");
        using var ms = new MemoryStream(bad);
        Assert.Throws<InvalidDataException>(() => RgssadReader.ReadAll(ms));
    }

    [Fact]
    public void Reader_RejectsWrongVersion()
    {
        // Correct magic but version 2
        byte[] data = new byte[] { (byte)'R', (byte)'G', (byte)'S', (byte)'S', (byte)'A', (byte)'D', 0, 2 };
        using var ms = new MemoryStream(data);
        Assert.Throws<InvalidDataException>(() => RgssadReader.ReadAll(ms));
    }

    [Fact]
    public void Reader_EmptyArchive_ReturnsNoEntries()
    {
        using var ms = new MemoryStream();
        using (var writer = new RgssadWriter(ms))
        {
        }

        ms.Position = 0;
        var entries = RgssadReader.ReadAll(ms);
        Assert.Empty(entries);
    }
}

public class RgssadRoundTripTests
{
    private static List<RgssadReader.ArchiveEntry> WriteAndReadBack(
        params (string name, byte[] data)[] files)
    {
        using var ms = new MemoryStream();
        using (var writer = new RgssadWriter(ms))
        {
            foreach (var (name, data) in files)
                writer.AddEntry(name, data);
        }

        ms.Position = 0;
        return RgssadReader.ReadAll(ms);
    }

    [Fact]
    public void SingleFile_RoundTrip()
    {
        byte[] content = Encoding.UTF8.GetBytes("Hello, RGSSAD!");
        var entries = WriteAndReadBack(("Data\\test.txt", content));

        Assert.Single(entries);
        Assert.Equal("Data\\test.txt", entries[0].Name);
        Assert.Equal(content, entries[0].Data);
    }

    [Fact]
    public void MultipleFiles_RoundTrip()
    {
        var file1 = ("Graphics\\player.png", new byte[] { 0x89, 0x50, 0x4E, 0x47 });
        var file2 = ("Data\\map001.rxdata", Encoding.UTF8.GetBytes("map data here"));
        var file3 = ("Audio\\bgm\\theme.ogg", new byte[256]);
        // Fill theme.ogg with a pattern
        for (int i = 0; i < 256; i++)
            file3.Item2[i] = (byte)(i & 0xFF);

        var entries = WriteAndReadBack(file1, file2, file3);

        Assert.Equal(3, entries.Count);

        Assert.Equal("Graphics\\player.png", entries[0].Name);
        Assert.Equal(file1.Item2, entries[0].Data);

        Assert.Equal("Data\\map001.rxdata", entries[1].Name);
        Assert.Equal(file2.Item2, entries[1].Data);

        Assert.Equal("Audio\\bgm\\theme.ogg", entries[2].Name);
        Assert.Equal(file3.Item2, entries[2].Data);
    }

    [Fact]
    public void EmptyFileContent_RoundTrip()
    {
        var entries = WriteAndReadBack(("Data\\empty.dat", Array.Empty<byte>()));

        Assert.Single(entries);
        Assert.Equal("Data\\empty.dat", entries[0].Name);
        Assert.Empty(entries[0].Data);
    }

    [Fact]
    public void SingleByte_RoundTrip()
    {
        // Tests partial block: 1 byte (less than 4-byte XOR block)
        var entries = WriteAndReadBack(("Data\\one.bin", new byte[] { 0xAB }));

        Assert.Single(entries);
        Assert.Equal(new byte[] { 0xAB }, entries[0].Data);
    }

    [Fact]
    public void TwoBytes_RoundTrip()
    {
        var entries = WriteAndReadBack(("Data\\two.bin", new byte[] { 0x12, 0x34 }));

        Assert.Single(entries);
        Assert.Equal(new byte[] { 0x12, 0x34 }, entries[0].Data);
    }

    [Fact]
    public void ThreeBytes_RoundTrip()
    {
        var entries = WriteAndReadBack(("Data\\three.bin", new byte[] { 0xAA, 0xBB, 0xCC }));

        Assert.Single(entries);
        Assert.Equal(new byte[] { 0xAA, 0xBB, 0xCC }, entries[0].Data);
    }

    [Fact]
    public void ExactFourBytes_RoundTrip()
    {
        // Exactly one full XOR block
        var entries = WriteAndReadBack(("Data\\four.bin", new byte[] { 0x11, 0x22, 0x33, 0x44 }));

        Assert.Single(entries);
        Assert.Equal(new byte[] { 0x11, 0x22, 0x33, 0x44 }, entries[0].Data);
    }

    [Fact]
    public void FiveBytes_RoundTrip()
    {
        // One full block + 1 byte partial
        var data = new byte[] { 0x01, 0x02, 0x03, 0x04, 0x05 };
        var entries = WriteAndReadBack(("Data\\five.bin", data));

        Assert.Single(entries);
        Assert.Equal(data, entries[0].Data);
    }

    [Fact]
    public void LargeFile_RoundTrip()
    {
        // 64 KB of pseudo-random data
        var rng = new Random(42);
        var data = new byte[65536];
        rng.NextBytes(data);

        var entries = WriteAndReadBack(("Graphics\\large.bin", data));

        Assert.Single(entries);
        Assert.Equal(data, entries[0].Data);
    }

    [Fact]
    public void AllZeros_RoundTrip()
    {
        // Edge case: XOR with zeros
        var data = new byte[100];
        var entries = WriteAndReadBack(("Data\\zeros.bin", data));

        Assert.Single(entries);
        Assert.Equal(data, entries[0].Data);
    }

    [Fact]
    public void AllOnes_RoundTrip()
    {
        var data = Enumerable.Repeat((byte)0xFF, 100).ToArray();
        var entries = WriteAndReadBack(("Data\\ones.bin", data));

        Assert.Single(entries);
        Assert.Equal(data, entries[0].Data);
    }

    [Fact]
    public void UnicodeFileName_RoundTrip()
    {
        byte[] content = { 1, 2, 3 };
        var entries = WriteAndReadBack(("Data\\日本語\\テスト.rxdata", content));

        Assert.Single(entries);
        Assert.Equal("Data\\日本語\\テスト.rxdata", entries[0].Name);
        Assert.Equal(content, entries[0].Data);
    }

    [Fact]
    public void LongFileName_RoundTrip()
    {
        string longPath = "Graphics\\Battlers\\" + new string('A', 200) + ".png";
        byte[] content = { 42 };
        var entries = WriteAndReadBack((longPath, content));

        Assert.Single(entries);
        Assert.Equal(longPath, entries[0].Name);
        Assert.Equal(content, entries[0].Data);
    }

    [Fact]
    public void ManySmallFiles_RoundTrip()
    {
        var files = new (string, byte[])[50];
        for (int i = 0; i < 50; i++)
            files[i] = ($"Data\\file{i:D3}.dat", Encoding.UTF8.GetBytes($"content_{i}"));

        var entries = WriteAndReadBack(files);

        Assert.Equal(50, entries.Count);
        for (int i = 0; i < 50; i++)
        {
            Assert.Equal($"Data\\file{i:D3}.dat", entries[i].Name);
            Assert.Equal(Encoding.UTF8.GetBytes($"content_{i}"), entries[i].Data);
        }
    }
}

public class RgssadWriterTests
{
    [Fact]
    public void EntryCount_TracksAdditions()
    {
        using var ms = new MemoryStream();
        using var writer = new RgssadWriter(ms);

        Assert.Equal(0, writer.EntryCount);

        writer.AddEntry("a.txt", new byte[] { 1 });
        Assert.Equal(1, writer.EntryCount);

        writer.AddEntry("b.txt", new byte[] { 2, 3 });
        Assert.Equal(2, writer.EntryCount);
    }

    [Fact]
    public void TotalBytes_TracksDataSize()
    {
        using var ms = new MemoryStream();
        using var writer = new RgssadWriter(ms);

        Assert.Equal(0, writer.TotalBytes);

        writer.AddEntry("a.txt", new byte[100]);
        Assert.Equal(100, writer.TotalBytes);

        writer.AddEntry("b.txt", new byte[50]);
        Assert.Equal(150, writer.TotalBytes);
    }

    [Fact]
    public void ArchiveIsEncrypted_NotPlaintext()
    {
        byte[] content = Encoding.UTF8.GetBytes("This should be encrypted");
        using var ms = new MemoryStream();
        using (var writer = new RgssadWriter(ms))
        {
            writer.AddEntry("Data\\secret.txt", content);
        }

        byte[] archive = ms.ToArray();
        string archiveStr = Encoding.UTF8.GetString(archive);

        // The plaintext content should NOT appear verbatim in the archive
        Assert.DoesNotContain("This should be encrypted", archiveStr);
        // The filename should NOT appear verbatim either
        Assert.DoesNotContain("Data\\secret.txt", archiveStr);
    }
}

public class FileCollectorTests
{
    [Fact]
    public void ShouldExclude_BakExtension()
    {
        Assert.True(FileCollector.ShouldExclude("backup.bak"));
    }

    [Fact]
    public void ShouldExclude_TmpExtension()
    {
        Assert.True(FileCollector.ShouldExclude("temp.tmp"));
    }

    [Fact]
    public void ShouldExclude_LogExtension()
    {
        Assert.True(FileCollector.ShouldExclude("debug.log"));
    }

    [Fact]
    public void ShouldExclude_DSStore()
    {
        Assert.True(FileCollector.ShouldExclude(".DS_Store"));
    }

    [Fact]
    public void ShouldExclude_ThumbsDb()
    {
        Assert.True(FileCollector.ShouldExclude("Thumbs.db"));
    }

    [Fact]
    public void ShouldExclude_Gitkeep()
    {
        Assert.True(FileCollector.ShouldExclude(".gitkeep"));
    }

    [Fact]
    public void ShouldExclude_Gitignore()
    {
        Assert.True(FileCollector.ShouldExclude(".gitignore"));
    }

    [Fact]
    public void ShouldExclude_DesktopIni()
    {
        Assert.True(FileCollector.ShouldExclude("desktop.ini"));
    }

    [Fact]
    public void ShouldExclude_CaseInsensitive()
    {
        Assert.True(FileCollector.ShouldExclude("THUMBS.DB"));
        Assert.True(FileCollector.ShouldExclude("file.BAK"));
        Assert.True(FileCollector.ShouldExclude("DESKTOP.INI"));
    }

    [Fact]
    public void ShouldNotExclude_ValidFiles()
    {
        Assert.False(FileCollector.ShouldExclude("map001.rxdata"));
        Assert.False(FileCollector.ShouldExclude("player.png"));
        Assert.False(FileCollector.ShouldExclude("theme.ogg"));
        Assert.False(FileCollector.ShouldExclude("script.rb"));
        Assert.False(FileCollector.ShouldExclude("tileset.bmp"));
    }

    [Fact]
    public void ArchiveFolders_ContainsExpected()
    {
        Assert.Contains("Data", FileCollector.ARCHIVE_FOLDERS);
        Assert.Contains("Graphics", FileCollector.ARCHIVE_FOLDERS);
        Assert.Contains("Audio", FileCollector.ARCHIVE_FOLDERS);
        Assert.Contains("Plugins", FileCollector.ARCHIVE_FOLDERS);
        Assert.Contains("PBS", FileCollector.ARCHIVE_FOLDERS);
    }

    [Fact]
    public void Collect_EmptyDirectory_ReturnsEmpty()
    {
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        Directory.CreateDirectory(tempDir);
        try
        {
            var result = FileCollector.Collect(tempDir);
            Assert.Empty(result);
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }

    [Fact]
    public void Collect_WithDataFolder_FindsFiles()
    {
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        var dataDir = Path.Combine(tempDir, "Data");
        Directory.CreateDirectory(dataDir);
        File.WriteAllText(Path.Combine(dataDir, "map001.rxdata"), "test");
        File.WriteAllText(Path.Combine(dataDir, "map002.rxdata"), "test2");

        try
        {
            var result = FileCollector.Collect(tempDir);
            Assert.Single(result);
            Assert.Equal("Data", result[0].Folder);
            Assert.Equal(2, result[0].Files.Count);
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }

    [Fact]
    public void Collect_ExcludesJunkFiles()
    {
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        var dataDir = Path.Combine(tempDir, "Data");
        Directory.CreateDirectory(dataDir);
        File.WriteAllText(Path.Combine(dataDir, "map001.rxdata"), "good");
        File.WriteAllText(Path.Combine(dataDir, "Thumbs.db"), "junk");
        File.WriteAllText(Path.Combine(dataDir, "backup.bak"), "junk");
        File.WriteAllText(Path.Combine(dataDir, ".gitkeep"), "");

        try
        {
            var result = FileCollector.Collect(tempDir);
            Assert.Single(result);
            Assert.Single(result[0].Files);
            Assert.Equal("Data\\map001.rxdata", result[0].Files[0].RelativePath);
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }

    [Fact]
    public void Collect_MultipleFolders()
    {
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        Directory.CreateDirectory(Path.Combine(tempDir, "Data"));
        Directory.CreateDirectory(Path.Combine(tempDir, "Graphics"));
        Directory.CreateDirectory(Path.Combine(tempDir, "Audio"));
        File.WriteAllText(Path.Combine(tempDir, "Data", "test.rxdata"), "d");
        File.WriteAllText(Path.Combine(tempDir, "Graphics", "sprite.png"), "g");
        File.WriteAllText(Path.Combine(tempDir, "Audio", "bgm.ogg"), "a");

        try
        {
            var result = FileCollector.Collect(tempDir);
            Assert.Equal(3, result.Count);
            Assert.Contains(result, s => s.Folder == "Data");
            Assert.Contains(result, s => s.Folder == "Graphics");
            Assert.Contains(result, s => s.Folder == "Audio");
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }

    [Fact]
    public void Collect_SubdirectoriesAreIncluded()
    {
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        var subDir = Path.Combine(tempDir, "Graphics", "Battlers");
        Directory.CreateDirectory(subDir);
        File.WriteAllText(Path.Combine(subDir, "001.png"), "sprite");

        try
        {
            var result = FileCollector.Collect(tempDir);
            Assert.Single(result);
            Assert.Equal("Graphics\\Battlers\\001.png", result[0].Files[0].RelativePath);
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }

    [Fact]
    public void Collect_IgnoresNonArchiveFolders()
    {
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        Directory.CreateDirectory(Path.Combine(tempDir, "Tools"));
        Directory.CreateDirectory(Path.Combine(tempDir, "Fonts"));
        File.WriteAllText(Path.Combine(tempDir, "Tools", "build.ps1"), "script");
        File.WriteAllText(Path.Combine(tempDir, "Fonts", "arial.ttf"), "font");

        try
        {
            var result = FileCollector.Collect(tempDir);
            Assert.Empty(result);
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }

    [Fact]
    public void Collect_TotalBytes_IsAccurate()
    {
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        var dataDir = Path.Combine(tempDir, "Data");
        Directory.CreateDirectory(dataDir);
        var content = new byte[1234];
        File.WriteAllBytes(Path.Combine(dataDir, "file.dat"), content);

        try
        {
            var result = FileCollector.Collect(tempDir);
            Assert.Single(result);
            Assert.Equal(1234, result[0].TotalBytes);
            Assert.Equal(1234, result[0].Files[0].Size);
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }
}

public class RgssadIntegrationTests
{
    /// <summary>
    /// Reference encoder that builds RGSSAD v1 bytes from scratch — no shared
    /// code with RgssadWriter — so we can cross-check output byte-for-byte.
    /// </summary>
    private static byte[] ReferenceEncode(params (string name, byte[] data)[] entries)
    {
        using var ms = new MemoryStream();
        // Header
        ms.Write(new byte[] { 0x52, 0x47, 0x53, 0x53, 0x41, 0x44, 0x00, 0x01 });

        uint key = 0xDEADCAFE;
        foreach (var (name, data) in entries)
        {
            byte[] nameBytes = Encoding.UTF8.GetBytes(name);

            // name_len XOR key (little-endian)
            WriteUInt32(ms, (uint)nameBytes.Length ^ key);
            key = unchecked(key * 7 + 3);

            // name bytes
            foreach (byte b in nameBytes)
            {
                ms.WriteByte((byte)(b ^ (key & 0xFF)));
                key = unchecked(key * 7 + 3);
            }

            // data_size XOR key
            WriteUInt32(ms, (uint)data.Length ^ key);
            key = unchecked(key * 7 + 3);

            // data — key does NOT advance at the entry level
            uint dataKey = key;
            int offset = 0;
            while (offset < data.Length)
            {
                int rem = Math.Min(4, data.Length - offset);
                uint block = 0;
                for (int i = 0; i < rem; i++)
                    block |= (uint)data[offset + i] << (i * 8);
                block ^= dataKey;
                for (int i = 0; i < rem; i++)
                    ms.WriteByte((byte)((block >> (i * 8)) & 0xFF));
                dataKey = unchecked(dataKey * 7 + 3);
                offset += rem;
            }
        }
        return ms.ToArray();
    }

    private static void WriteUInt32(Stream s, uint v)
    {
        s.WriteByte((byte)(v & 0xFF));
        s.WriteByte((byte)((v >> 8) & 0xFF));
        s.WriteByte((byte)((v >> 16) & 0xFF));
        s.WriteByte((byte)((v >> 24) & 0xFF));
    }

    [Fact]
    public void Writer_MatchesReferenceImplementation_SingleFile()
    {
        var name = "Data\\test.txt";
        var data = new byte[] { 0x41, 0x42, 0x43 }; // "ABC"

        byte[] reference = ReferenceEncode((name, data));

        using var ms = new MemoryStream();
        using (var w = new RgssadWriter(ms))
            w.AddEntry(name, data);
        byte[] actual = ms.ToArray();

        Assert.Equal(reference, actual);
    }

    [Fact]
    public void Writer_MatchesReferenceImplementation_TwoFiles()
    {
        var file1 = ("Data\\map.rxdata", new byte[] { 1, 2, 3, 4, 5 });
        var file2 = ("Data\\actors.rxdata", new byte[] { 10, 20, 30 });

        byte[] reference = ReferenceEncode(file1, file2);

        using var ms = new MemoryStream();
        using (var w = new RgssadWriter(ms))
        {
            w.AddEntry(file1.Item1, file1.Item2);
            w.AddEntry(file2.Item1, file2.Item2);
        }
        byte[] actual = ms.ToArray();

        Assert.Equal(reference, actual);
    }

    [Fact]
    public void Writer_ArchiveSize_IsCorrect()
    {
        // name = "a" (1 byte), data = 3 bytes
        // Header: 8
        // Entry: name_len(4) + name(1) + data_size(4) + data(3) = 12
        // Total: 20
        using var ms = new MemoryStream();
        using (var w = new RgssadWriter(ms))
            w.AddEntry("a", new byte[] { 1, 2, 3 });

        Assert.Equal(20, ms.ToArray().Length);
    }

    [Fact]
    public void Writer_TwoEntry_ArchiveSize_IsCorrect()
    {
        // Entry 1: name="a"(1), data=4 bytes → 4+1+4+4 = 13
        // Entry 2: name="bb"(2), data=5 bytes → 4+2+4+5 = 15
        // Header: 8, Total: 8 + 13 + 15 = 36
        using var ms = new MemoryStream();
        using (var w = new RgssadWriter(ms))
        {
            w.AddEntry("a", new byte[] { 1, 2, 3, 4 });
            w.AddEntry("bb", new byte[] { 5, 6, 7, 8, 9 });
        }

        Assert.Equal(36, ms.ToArray().Length);
    }

    [Fact]
    public void FullPipeline_CollectWriteRead()
    {
        // Simulate a mini game directory → collect → archive → verify
        var tempDir = Path.Combine(Path.GetTempPath(), $"rgsstest_{Guid.NewGuid():N}");
        var dataDir = Path.Combine(tempDir, "Data");
        var gfxDir = Path.Combine(tempDir, "Graphics", "Characters");
        Directory.CreateDirectory(dataDir);
        Directory.CreateDirectory(gfxDir);

        var mapData = Encoding.UTF8.GetBytes("marshal_dump_map_data_here");
        var spriteData = new byte[] { 0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A }; // PNG header

        File.WriteAllBytes(Path.Combine(dataDir, "Map001.rxdata"), mapData);
        File.WriteAllBytes(Path.Combine(gfxDir, "player.png"), spriteData);
        // Junk that should be excluded
        File.WriteAllText(Path.Combine(dataDir, "Thumbs.db"), "junk");

        try
        {
            // Step 1: Collect
            var summaries = FileCollector.Collect(tempDir);
            var allFiles = summaries.SelectMany(s => s.Files).ToList();
            Assert.Equal(2, allFiles.Count);

            // Step 2: Write archive
            using var ms = new MemoryStream();
            using (var writer = new RgssadWriter(ms))
            {
                foreach (var f in allFiles)
                {
                    byte[] data = File.ReadAllBytes(f.FullPath);
                    writer.AddEntry(f.RelativePath, data);
                }
                Assert.Equal(2, writer.EntryCount);
            }

            // Step 3: Read back
            ms.Position = 0;
            var entries = RgssadReader.ReadAll(ms);
            Assert.Equal(2, entries.Count);

            // Verify contents match originals
            var mapEntry = entries.First(e => e.Name.Contains("Map001"));
            Assert.Equal(mapData, mapEntry.Data);

            var spriteEntry = entries.First(e => e.Name.Contains("player"));
            Assert.Equal(spriteData, spriteEntry.Data);
        }
        finally
        {
            Directory.Delete(tempDir, true);
        }
    }

    [Fact]
    public void FileArchive_WriteToDisk_ReadBack()
    {
        var tempFile = Path.Combine(Path.GetTempPath(), $"test_{Guid.NewGuid():N}.rgssad");
        var content1 = Encoding.UTF8.GetBytes("Ruby script content here");
        var content2 = new byte[4096];
        new Random(123).NextBytes(content2);

        try
        {
            // Write to actual file
            using (var fs = new FileStream(tempFile, FileMode.Create))
            using (var writer = new RgssadWriter(fs))
            {
                writer.AddEntry("Plugins\\test\\main.rb", content1);
                writer.AddEntry("Data\\System.rxdata", content2);
            }

            Assert.True(File.Exists(tempFile));
            Assert.True(new FileInfo(tempFile).Length > 8);

            // Read from actual file
            var entries = RgssadReader.ReadAll(tempFile);
            Assert.Equal(2, entries.Count);
            Assert.Equal("Plugins\\test\\main.rb", entries[0].Name);
            Assert.Equal(content1, entries[0].Data);
            Assert.Equal("Data\\System.rxdata", entries[1].Name);
            Assert.Equal(content2, entries[1].Data);
        }
        finally
        {
            if (File.Exists(tempFile))
                File.Delete(tempFile);
        }
    }
}
