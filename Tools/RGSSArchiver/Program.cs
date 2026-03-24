// =============================================================================
// RGSSArchiver — Universal CLI tool for RGSSAD v1 encrypted archives
//
// Works with any RPG Maker XP / mkxp-z project.
//
// Commands:
//   create     Build RGSSAD archive from game directory (default)
//   extract    Extract RGSSAD archive to directory
//   list       List archive contents
//   verify     Verify archive integrity
//   patch-exe  Patch Game.exe with custom encryption key
//   protect    Encrypt RGSSAD -> .scd (AES-256)
//   unprotect  Decrypt .scd -> RGSSAD
//   gui        Open graphical web interface
// =============================================================================
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;

namespace RGSSArchiver;

class Program
{
    const string VERSION = "1.0.0";

    static int Main(string[] args)
    {
        if (args.Length > 0 && args[0] is "--version" or "-V")
        {
            Console.WriteLine($"RGSSArchiver {VERSION}");
            return 0;
        }

        try
        {
            // No arguments (e.g. double-click) → open GUI
            if (args.Length == 0)
                return WebGui.RunAsync().GetAwaiter().GetResult();

            string command = "create";
            if (!args[0].StartsWith('-'))
            {
                command = args[0];
                args = args.Skip(1).ToArray();
            }

            return command switch
            {
                "create"    => RunCreate(args),
                "extract"   => RunExtract(args),
                "list"      => RunList(args),
                "verify"    => RunVerify(args),
                "patch-exe" => RunPatchExe(args),
                "protect"   => RunProtect(args, encrypt: true),
                "unprotect" => RunProtect(args, encrypt: false),
                "gui"       => WebGui.RunAsync().GetAwaiter().GetResult(),
                "-h" or "--help" => PrintUsage(),
                _ => PrintUsage()
            };
        }
        catch (Exception ex)
        {
            Console.Error.WriteLine($"Error: {ex.Message}");
            return 1;
        }
    }

    // =========================================================================
    // create — Build RGSSAD archive from game directory
    // =========================================================================
    static int RunCreate(string[] args)
    {
        string gameDir = ".";
        string outputFile = null!;
        bool verbose = false;
        uint? customKey = null;

        for (int i = 0; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-d" or "--dir":
                    if (i + 1 < args.Length) gameDir = args[++i];
                    break;
                case "-o" or "--output":
                    if (i + 1 < args.Length) outputFile = args[++i];
                    break;
                case "-k" or "--key":
                    if (i + 1 < args.Length) customKey = ParseHexKey(args[++i]);
                    break;
                case "-v" or "--verbose":
                    verbose = true;
                    break;
                case "-h" or "--help":
                    return PrintUsage();
                default:
                    if (!args[i].StartsWith('-'))
                        gameDir = args[i];
                    break;
            }
        }

        gameDir = Path.GetFullPath(gameDir);
        outputFile ??= Path.Combine(gameDir, "Game.rgssad");

        if (!Directory.Exists(gameDir))
        {
            Console.Error.WriteLine($"Error: Directory not found: {gameDir}");
            return 1;
        }

        string mode = customKey.HasValue ? "protected archive (custom key)" : "archive";
        Console.WriteLine($"RGSSArchiver {VERSION}");
        Console.WriteLine($"  Game dir : {gameDir}");
        Console.WriteLine($"  Output   : {outputFile}");
        if (customKey.HasValue)
            Console.WriteLine($"  Key      : 0x{customKey.Value:X8}");
        Console.WriteLine();

        var summaries = FileCollector.Collect(gameDir);
        var entries = new List<(string rel, string full)>();
        long totalRawBytes = 0;

        foreach (var folder in FileCollector.ARCHIVE_FOLDERS)
        {
            var summary = summaries.FirstOrDefault(s => s.Folder == folder);
            if (summary == null)
            {
                Console.WriteLine($"  [{folder}] — skipped (not found)");
                continue;
            }
            foreach (var f in summary.Files)
                entries.Add((f.RelativePath, f.FullPath));
            totalRawBytes += summary.TotalBytes;
            Console.WriteLine($"  [{folder}] {summary.Files.Count,5} files  ({FormatSize(summary.TotalBytes)})");
        }

        Console.WriteLine($"\n  Total: {entries.Count} files ({FormatSize(totalRawBytes)})");
        Console.WriteLine();

        if (entries.Count == 0)
        {
            Console.Error.WriteLine("Error: No files to archive.");
            return 1;
        }

        var sw = Stopwatch.StartNew();
        Console.Write($"  Creating {mode}...");

        using (var fs = new FileStream(outputFile, FileMode.Create, FileAccess.Write, FileShare.None, 1 << 16))
        {
            RgssadWriter writer = customKey.HasValue
                ? new RgssadWriter(fs, customKey.Value, RgssadCrypto.STANDARD_MAGIC)
                : new RgssadWriter(fs);

            using (writer)
            {
                int count = 0;
                foreach (var (rel, full) in entries)
                {
                    byte[] fileData = File.ReadAllBytes(full);
                    writer.AddEntry(rel, fileData);
                    count++;
                    if (verbose)
                        Console.WriteLine($"  [{count,5}/{entries.Count}] {rel} ({FormatSize(fileData.Length)})");
                    else if (count % 200 == 0)
                        Console.Write($"\r  Creating {mode}... {count}/{entries.Count}");
                }
            }
        }

        sw.Stop();
        long archiveSize = new FileInfo(outputFile).Length;

        Console.WriteLine($"\r  Creating {mode}... done!                    ");
        Console.WriteLine();
        Console.WriteLine($"  Archive   : {FormatSize(archiveSize)}");
        Console.WriteLine($"  Raw data  : {FormatSize(totalRawBytes)}");
        Console.WriteLine($"  Ratio     : {(double)archiveSize / totalRawBytes:P1}");
        Console.WriteLine($"  Time      : {sw.Elapsed.TotalSeconds:F1}s");
        Console.WriteLine("\nDone!");
        return 0;
    }

    // =========================================================================
    // extract — Extract RGSSAD archive to directory
    // =========================================================================
    static int RunExtract(string[] args)
    {
        string? inputFile = null;
        string? outputDir = null;
        uint? customKey = null;
        bool verbose = false;

        for (int i = 0; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-i" or "--input":
                    if (i + 1 < args.Length) inputFile = args[++i];
                    break;
                case "-o" or "--output":
                    if (i + 1 < args.Length) outputDir = args[++i];
                    break;
                case "-k" or "--key":
                    if (i + 1 < args.Length) customKey = ParseHexKey(args[++i]);
                    break;
                case "-v" or "--verbose":
                    verbose = true;
                    break;
            }
        }

        if (inputFile == null)
        {
            Console.Error.WriteLine("Error: -i <archive> is required for 'extract'.");
            return 1;
        }
        inputFile = Path.GetFullPath(inputFile);
        if (!File.Exists(inputFile))
        {
            Console.Error.WriteLine($"Error: File not found: {inputFile}");
            return 1;
        }

        outputDir ??= Path.GetDirectoryName(inputFile)!;
        outputDir = Path.GetFullPath(outputDir);

        uint key = customKey ?? RgssadCrypto.INITIAL_KEY;
        Console.WriteLine($"RGSSArchiver {VERSION} — Extract");
        Console.WriteLine($"  Archive : {inputFile}");
        Console.WriteLine($"  Output  : {outputDir}");
        Console.WriteLine($"  Key     : 0x{key:X8}{(customKey.HasValue ? " (custom)" : " (standard)")}");
        Console.WriteLine();

        var sw = Stopwatch.StartNew();
        using var fs = new FileStream(inputFile, FileMode.Open, FileAccess.Read);
        var entries = RgssadReader.ReadAll(fs, key, RgssadCrypto.STANDARD_MAGIC);

        int count = 0;
        foreach (var entry in entries)
        {
            string outPath = Path.Combine(outputDir, entry.Name);
            Directory.CreateDirectory(Path.GetDirectoryName(outPath)!);
            File.WriteAllBytes(outPath, entry.Data);
            count++;
            if (verbose)
                Console.WriteLine($"  [{count,5}/{entries.Count}] {entry.Name} ({FormatSize(entry.Data.Length)})");
            else if (count % 200 == 0)
                Console.Write($"\r  Extracting... {count}/{entries.Count}");
        }

        sw.Stop();
        Console.WriteLine($"\r  Extracted {entries.Count} files in {sw.Elapsed.TotalSeconds:F1}s");
        Console.WriteLine("Done!");
        return 0;
    }

    // =========================================================================
    // list — List archive contents
    // =========================================================================
    static int RunList(string[] args)
    {
        string? inputFile = null;
        uint? customKey = null;

        for (int i = 0; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-i" or "--input":
                    if (i + 1 < args.Length) inputFile = args[++i];
                    break;
                case "-k" or "--key":
                    if (i + 1 < args.Length) customKey = ParseHexKey(args[++i]);
                    break;
            }
        }

        if (inputFile == null)
        {
            Console.Error.WriteLine("Error: -i <archive> is required for 'list'.");
            return 1;
        }
        inputFile = Path.GetFullPath(inputFile);
        if (!File.Exists(inputFile))
        {
            Console.Error.WriteLine($"Error: File not found: {inputFile}");
            return 1;
        }

        uint key = customKey ?? RgssadCrypto.INITIAL_KEY;
        using var fs = new FileStream(inputFile, FileMode.Open, FileAccess.Read);
        var entries = RgssadReader.ReadAll(fs, key, RgssadCrypto.STANDARD_MAGIC);

        // Group by top-level folder
        var groups = entries
            .GroupBy(e => e.Name.Contains('\\') ? e.Name.Split('\\')[0] : "(root)")
            .OrderBy(g => g.Key);

        Console.WriteLine($"Archive: {inputFile}");
        Console.WriteLine($"Key: 0x{key:X8}  |  Entries: {entries.Count}");
        Console.WriteLine(new string('-', 60));

        foreach (var group in groups)
        {
            long groupSize = group.Sum(e => (long)e.Data.Length);
            Console.WriteLine($"  [{group.Key}] {group.Count()} files ({FormatSize(groupSize)})");
        }

        long totalSize = entries.Sum(e => (long)e.Data.Length);
        Console.WriteLine(new string('-', 60));
        Console.WriteLine($"  Total: {entries.Count} files ({FormatSize(totalSize)})");
        return 0;
    }

    // =========================================================================
    // verify — Read archive and verify integrity
    // =========================================================================
    static int RunVerify(string[] args)
    {
        string? inputFile = null;
        uint? customKey = null;

        for (int i = 0; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-i" or "--input":
                    if (i + 1 < args.Length) inputFile = args[++i];
                    break;
                case "-k" or "--key":
                    if (i + 1 < args.Length) customKey = ParseHexKey(args[++i]);
                    break;
            }
        }

        if (inputFile == null)
        {
            Console.Error.WriteLine("Error: -i <archive> is required for 'verify'.");
            return 1;
        }
        inputFile = Path.GetFullPath(inputFile);
        if (!File.Exists(inputFile))
        {
            Console.Error.WriteLine($"Error: File not found: {inputFile}");
            return 1;
        }

        uint key = customKey ?? RgssadCrypto.INITIAL_KEY;
        Console.WriteLine($"Verifying: {inputFile}");
        Console.WriteLine($"Key: 0x{key:X8}{(customKey.HasValue ? " (custom)" : " (standard)")}");
        Console.WriteLine();

        using var fs = new FileStream(inputFile, FileMode.Open, FileAccess.Read);
        var entries = RgssadReader.ReadAll(fs, key, RgssadCrypto.STANDARD_MAGIC);

        Console.WriteLine($"Entries: {entries.Count}");
        for (int i = 0; i < Math.Min(5, entries.Count); i++)
            Console.WriteLine($"  [{i}] {entries[i].Name} ({entries[i].Data.Length:N0} bytes)");
        if (entries.Count > 10)
        {
            Console.WriteLine("  ...");
            for (int i = entries.Count - 3; i < entries.Count; i++)
                Console.WriteLine($"  [{i}] {entries[i].Name} ({entries[i].Data.Length:N0} bytes)");
        }

        Console.WriteLine($"\n  All {entries.Count} entries readable.");
        Console.WriteLine("Done!");
        return 0;
    }

    // =========================================================================
    // patch-exe — Patch Game.exe with custom encryption key
    // =========================================================================
    static int RunPatchExe(string[] args)
    {
        string? inputFile = null;
        string? outputFile = null;
        uint? customKey = null;

        for (int i = 0; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-i" or "--input":
                    if (i + 1 < args.Length) inputFile = args[++i];
                    break;
                case "-o" or "--output":
                    if (i + 1 < args.Length) outputFile = args[++i];
                    break;
                case "-k" or "--key":
                    if (i + 1 < args.Length) customKey = ParseHexKey(args[++i]);
                    break;
            }
        }

        if (inputFile == null)
        {
            Console.Error.WriteLine("Error: -i <Game.exe> is required for 'patch-exe'.");
            return 1;
        }
        if (!customKey.HasValue)
        {
            Console.Error.WriteLine("Error: -k <hex_key> is required for 'patch-exe'.");
            return 1;
        }

        inputFile = Path.GetFullPath(inputFile);
        if (!File.Exists(inputFile))
        {
            Console.Error.WriteLine($"Error: File not found: {inputFile}");
            return 1;
        }

        outputFile ??= inputFile;
        outputFile = Path.GetFullPath(outputFile);

        Console.WriteLine($"RGSSArchiver {VERSION} — Patch Game.exe");
        Console.WriteLine($"  Input  : {inputFile}");
        Console.WriteLine($"  Output : {outputFile}");
        Console.WriteLine($"  Key    : 0x{customKey.Value:X8}");
        Console.WriteLine();

        if (ExePatcher.IsPatched(inputFile, customKey.Value))
        {
            Console.WriteLine("  Already patched with this key — skipping.");
            return 0;
        }

        var result = ExePatcher.Patch(inputFile, outputFile, customKey.Value);

        Console.WriteLine($"  Key patched: 0x{result.OriginalKey:X8} -> 0x{result.CustomKey:X8}  (offset 0x{result.KeyOffset:X})");
        Console.WriteLine();
        Console.WriteLine("  Standard RPG Maker Decrypter tools will NOT work.");
        Console.WriteLine("  Use the same key when creating archives: create -k 0x" + $"{customKey.Value:X8}");
        Console.WriteLine("\nDone!");
        return 0;
    }

    // =========================================================================
    // protect / unprotect — AES-256 encryption layer
    // =========================================================================
    static int RunProtect(string[] args, bool encrypt)
    {
        string? inputFile = null;
        string? outputFile = null;
        string? passphrase = null;

        for (int i = 0; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-i" or "--input":
                    if (i + 1 < args.Length) inputFile = args[++i];
                    break;
                case "-o" or "--output":
                    if (i + 1 < args.Length) outputFile = args[++i];
                    break;
                case "-p" or "--passphrase":
                    if (i + 1 < args.Length) passphrase = args[++i];
                    break;
            }
        }

        if (inputFile == null)
        {
            Console.Error.WriteLine($"Error: -i <input> is required for '{(encrypt ? "protect" : "unprotect")}'.");
            return 1;
        }
        if (passphrase == null)
        {
            Console.Error.WriteLine($"Error: -p <passphrase> is required for '{(encrypt ? "protect" : "unprotect")}'.");
            return 1;
        }

        inputFile = Path.GetFullPath(inputFile);
        if (!File.Exists(inputFile))
        {
            Console.Error.WriteLine($"Error: File not found: {inputFile}");
            return 1;
        }

        outputFile ??= encrypt
            ? Path.ChangeExtension(inputFile, ".scd")
            : Path.ChangeExtension(inputFile, ".rgssad");
        outputFile = Path.GetFullPath(outputFile);

        var sw = Stopwatch.StartNew();
        long inputSize = new FileInfo(inputFile).Length;
        string op = encrypt ? "Encrypting" : "Decrypting";

        Console.WriteLine($"  {op}: {inputFile}");
        Console.WriteLine($"  Output    : {outputFile}");
        Console.WriteLine($"  Input size: {FormatSize(inputSize)}");
        Console.Write($"  AES-256-CBC {op.ToLower()}...");

        if (encrypt)
            ArchiveProtector.Encrypt(inputFile, outputFile, passphrase);
        else
            ArchiveProtector.Decrypt(inputFile, outputFile, passphrase);

        sw.Stop();
        long outputSize = new FileInfo(outputFile).Length;
        Console.WriteLine(" done!");
        Console.WriteLine($"  Output size: {FormatSize(outputSize)}");
        Console.WriteLine($"  Time       : {sw.Elapsed.TotalSeconds:F1}s");
        return 0;
    }

    // =========================================================================
    // Helpers
    // =========================================================================
    static uint ParseHexKey(string value)
    {
        string s = value.Trim();
        if (s.StartsWith("0x", StringComparison.OrdinalIgnoreCase))
            s = s[2..];
        if (!uint.TryParse(s, System.Globalization.NumberStyles.HexNumber, null, out uint result))
            throw new ArgumentException($"Invalid hex key: '{value}'. Expected format: 0xDEADCAFE");
        return result;
    }

    static string FormatSize(long bytes) => bytes switch
    {
        < 1024          => $"{bytes} B",
        < 1024 * 1024   => $"{bytes / 1024.0:F1} KB",
        _               => $"{bytes / (1024.0 * 1024.0):F1} MB"
    };

    static int PrintUsage()
    {
        Console.WriteLine($"RGSSArchiver {VERSION} — Universal RGSSAD v1 archive tool");
        Console.WriteLine("  For RPG Maker XP / mkxp-z projects");
        Console.WriteLine();
        Console.WriteLine("Usage:");
        Console.WriteLine("  RGSSArchiver <command> [options]");
        Console.WriteLine();
        Console.WriteLine("Commands:");
        Console.WriteLine("  create       Build RGSSAD archive from game directory (default)");
        Console.WriteLine("  extract      Extract RGSSAD archive to directory");
        Console.WriteLine("  list         List archive contents grouped by folder");
        Console.WriteLine("  verify       Verify archive integrity");
        Console.WriteLine("  patch-exe    Patch Game.exe with custom encryption key");
        Console.WriteLine("  protect      Encrypt RGSSAD -> .scd (AES-256-CBC)");
        Console.WriteLine("  unprotect    Decrypt .scd -> RGSSAD");
        Console.WriteLine("  gui          Open graphical web interface");
        Console.WriteLine();
        Console.WriteLine("Common options:");
        Console.WriteLine("  -i, --input <path>      Input file");
        Console.WriteLine("  -o, --output <path>     Output file or directory");
        Console.WriteLine("  -d, --dir <path>        Game directory (create command)");
        Console.WriteLine("  -k, --key <hex>         Custom XOR encryption key (e.g. 0xB7A3C1D9)");
        Console.WriteLine("  -p, --passphrase <str>  Passphrase for AES protect/unprotect");
        Console.WriteLine("  -v, --verbose           Verbose output");
        Console.WriteLine("  -V, --version           Show version");
        Console.WriteLine("  -h, --help              Show this help");
        Console.WriteLine();
        Console.WriteLine("Examples:");
        Console.WriteLine("  RGSSArchiver create -d ./MyGame -o Game.rgssad");
        Console.WriteLine("  RGSSArchiver create -d ./MyGame -k 0xB7A3C1D9");
        Console.WriteLine("  RGSSArchiver extract -i Game.rgssad -o ./extracted");
        Console.WriteLine("  RGSSArchiver extract -i Game.rgssad -k 0xB7A3C1D9");
        Console.WriteLine("  RGSSArchiver list -i Game.rgssad");
        Console.WriteLine("  RGSSArchiver verify -i Game.rgssad -k 0xB7A3C1D9");
        Console.WriteLine("  RGSSArchiver patch-exe -i Game.exe -k 0xB7A3C1D9");
        Console.WriteLine("  RGSSArchiver protect -i Game.rgssad -p \"MySecret123\"");
        Console.WriteLine("  RGSSArchiver unprotect -i Game.scd -p \"MySecret123\"");
        Console.WriteLine();
        Console.WriteLine("Anti-decryption workflow:");
        Console.WriteLine("  1. Choose a custom key:  e.g. 0xB7A3C1D9");
        Console.WriteLine("  2. Create archive:       create -d ./MyGame -k 0xB7A3C1D9");
        Console.WriteLine("  3. Patch Game.exe:       patch-exe -i Game.exe -k 0xB7A3C1D9");
        Console.WriteLine("  4. (Optional) AES layer: protect -i Game.rgssad -p \"secret\"");
        Console.WriteLine();
        Console.WriteLine("Archived folders: Data, Graphics, Audio, Plugins, PBS, Fonts");
        return 0;
    }
}
