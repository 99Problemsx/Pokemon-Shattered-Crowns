// =============================================================================
// RGSSArchiver — CLI tool to create RGSSAD v1 encrypted archives
// Uses RgssadWriter / RgssadReader / FileCollector from the same project.
//
// Commands:
//   (default)  Build RGSSAD archive from game directory
//   protect    Encrypt RGSSAD → .scd (AES-256)
//   unprotect  Decrypt .scd → RGSSAD
// =============================================================================
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;

namespace RGSSArchiver;

class Program
{
    static int Main(string[] args)
    {
        // Check for subcommand
        if (args.Length > 0 && args[0] is "protect" or "unprotect")
            return RunProtectCommand(args);
        if (args.Length > 0 && args[0] == "patch-exe")
            return RunPatchExeCommand(args);

        string gameDir = ".";
        string outputFile = null!;
        bool verbose = false;
        bool protectedBuild = false;

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
                case "-v" or "--verbose":
                    verbose = true;
                    break;
                case "--protected":
                    protectedBuild = true;
                    break;
                case "-h" or "--help":
                    PrintUsage();
                    return 0;
                default:
                    if (!args[i].StartsWith('-'))
                        gameDir = args[i];
                    break;
            }
        }

        gameDir = Path.GetFullPath(gameDir);
        string defaultExt = "Game.rgssad";
        outputFile ??= Path.Combine(gameDir, defaultExt);

        if (!Directory.Exists(gameDir))
        {
            Console.Error.WriteLine($"Error: Directory not found: {gameDir}");
            return 1;
        }

        bool hasGameIni = File.Exists(Path.Combine(gameDir, "Game.ini"));
        bool hasGameExe = File.Exists(Path.Combine(gameDir, "Game.exe"));
        if (!hasGameIni && !hasGameExe)
            Console.Error.WriteLine("Warning: No Game.ini or Game.exe found — are you in the right directory?");

        Console.WriteLine("╔══════════════════════════════════════════════════╗");
        Console.WriteLine("║        RGSSAD Archiver — Shattered Crowns       ║");
        Console.WriteLine("╚══════════════════════════════════════════════════╝");
        Console.WriteLine($"  Game dir : {gameDir}");
        Console.WriteLine($"  Output   : {outputFile}");
        Console.WriteLine();

        // -----------------------------------------------------------------
        // Collect files
        // -----------------------------------------------------------------
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

        // -----------------------------------------------------------------
        // Create archive
        // -----------------------------------------------------------------
        var sw = Stopwatch.StartNew();
        string mode = protectedBuild ? "protected archive (custom encryption)" : "archive";
        Console.Write($"  Creating {mode}...");

        using (var fs = new FileStream(outputFile, FileMode.Create, FileAccess.Write, FileShare.None, 1 << 16))
        {
            RgssadWriter writer = protectedBuild
                ? new RgssadWriter(fs, ExePatcher.CUSTOM_KEY, RgssadCrypto.STANDARD_MAGIC)
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

        Console.WriteLine($"\r  Creating archive... done!                    ");
        Console.WriteLine();
        Console.WriteLine($"  ✓ Archive   : {FormatSize(archiveSize)}");
        Console.WriteLine($"  ✓ Raw data  : {FormatSize(totalRawBytes)}");
        Console.WriteLine($"  ✓ Ratio     : {(double)archiveSize / totalRawBytes:P1}");
        Console.WriteLine($"  ✓ Time      : {sw.Elapsed.TotalSeconds:F1}s");
        Console.WriteLine();
        Console.WriteLine("Done!");
        return 0;
    }

    static string FormatSize(long bytes) => bytes switch
    {
        < 1024          => $"{bytes} B",
        < 1024 * 1024   => $"{bytes / 1024.0:F1} KB",
        _               => $"{bytes / (1024.0 * 1024.0):F1} MB"
    };

    static void PrintUsage()
    {
        Console.WriteLine("RGSSArchiver — Creates RGSSAD v1 encrypted archives for RPG Maker XP / mkxp-z");
        Console.WriteLine();
        Console.WriteLine("Usage:");
        Console.WriteLine("  RGSSArchiver.exe [game_directory]");
        Console.WriteLine("  RGSSArchiver.exe -d <path> -o <output.rgssad> [-v]");
        Console.WriteLine("  RGSSArchiver.exe protect  -i <Game.rgssad> -o <Game.scd>");
        Console.WriteLine("  RGSSArchiver.exe unprotect -i <Game.scd> -o <Game.rgssad>");
        Console.WriteLine();
        Console.WriteLine("Options:");
        Console.WriteLine("  -d, --dir <path>     Game directory (default: current directory)");
        Console.WriteLine("  -o, --output <path>  Output file path (default: Game.rgssad in game dir)");
        Console.WriteLine("  -i, --input <path>   Input file for protect/unprotect");
        Console.WriteLine("  -v, --verbose        Print every file being archived");
        Console.WriteLine("  -h, --help           Show this help");
        Console.WriteLine();
        Console.WriteLine("Archived folders: Data, Graphics, Audio, Plugins, PBS, Fonts");
        Console.WriteLine();
        Console.WriteLine("Protection:");
        Console.WriteLine("  'protect'   encrypts a .rgssad with AES-256 → .scd (unrecognizable by decrypter tools)");
        Console.WriteLine("  'unprotect' decrypts a .scd back to .rgssad");
    }

    // =========================================================================
    // protect / unprotect subcommands
    // =========================================================================
    static int RunProtectCommand(string[] args)
    {
        bool encrypt = args[0] == "protect";
        string? inputFile = null;
        string? outputFile = null;

        for (int i = 1; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-i" or "--input":
                    if (i + 1 < args.Length) inputFile = args[++i];
                    break;
                case "-o" or "--output":
                    if (i + 1 < args.Length) outputFile = args[++i];
                    break;
            }
        }

        if (inputFile == null)
        {
            Console.Error.WriteLine($"Error: -i <input> is required for '{args[0]}'.");
            return 1;
        }
        inputFile = Path.GetFullPath(inputFile);
        if (!File.Exists(inputFile))
        {
            Console.Error.WriteLine($"Error: File not found: {inputFile}");
            return 1;
        }

        // Default output: same directory, swap extension
        outputFile ??= encrypt
            ? Path.ChangeExtension(inputFile, ".scd")
            : Path.ChangeExtension(inputFile, ".rgssad");
        outputFile = Path.GetFullPath(outputFile);

        var sw = Stopwatch.StartNew();
        long inputSize = new FileInfo(inputFile).Length;

        if (encrypt)
        {
            Console.WriteLine($"  Encrypting: {inputFile}");
            Console.WriteLine($"  Output    : {outputFile}");
            Console.WriteLine($"  Input size: {FormatSize(inputSize)}");
            Console.Write("  AES-256-CBC encrypting...");
            ArchiveProtector.Encrypt(inputFile, outputFile);
        }
        else
        {
            Console.WriteLine($"  Decrypting: {inputFile}");
            Console.WriteLine($"  Output    : {outputFile}");
            Console.WriteLine($"  Input size: {FormatSize(inputSize)}");
            Console.Write("  AES-256-CBC decrypting...");
            ArchiveProtector.Decrypt(inputFile, outputFile);
        }

        sw.Stop();
        long outputSize = new FileInfo(outputFile).Length;
        Console.WriteLine(" done!");
        Console.WriteLine($"  ✓ Output size: {FormatSize(outputSize)}");
        Console.WriteLine($"  ✓ Time       : {sw.Elapsed.TotalSeconds:F1}s");
        return 0;
    }

    // =========================================================================
    // patch-exe subcommand — patch Game.exe with custom RGSSAD constants
    // =========================================================================
    static int RunPatchExeCommand(string[] args)
    {
        string? inputFile = null;
        string? outputFile = null;

        for (int i = 1; i < args.Length; i++)
        {
            switch (args[i])
            {
                case "-i" or "--input":
                    if (i + 1 < args.Length) inputFile = args[++i];
                    break;
                case "-o" or "--output":
                    if (i + 1 < args.Length) outputFile = args[++i];
                    break;
            }
        }

        if (inputFile == null)
        {
            Console.Error.WriteLine("Error: -i <Game.exe> is required for 'patch-exe'.");
            return 1;
        }
        inputFile = Path.GetFullPath(inputFile);
        if (!File.Exists(inputFile))
        {
            Console.Error.WriteLine($"Error: File not found: {inputFile}");
            return 1;
        }

        outputFile ??= inputFile; // In-place patch by default
        outputFile = Path.GetFullPath(outputFile);

        Console.WriteLine("╔══════════════════════════════════════════════════╗");
        Console.WriteLine("║        Game.exe Binary Patcher                  ║");
        Console.WriteLine("╚══════════════════════════════════════════════════╝");
        Console.WriteLine($"  Input  : {inputFile}");
        Console.WriteLine($"  Output : {outputFile}");
        Console.WriteLine();

        if (ExePatcher.IsPatched(inputFile))
        {
            Console.WriteLine("  ⚠ This binary is already patched — skipping.");
            return 0;
        }

        var result = ExePatcher.Patch(inputFile, outputFile);

        Console.WriteLine($"  ✓ Key patched   : 0x{ExePatcher.ORIGINAL_KEY:X8} → 0x{ExePatcher.CUSTOM_KEY:X8}  (offset 0x{result.KeyOffset:X})");
        Console.WriteLine();
        Console.WriteLine("  Archive header stays RGSSAD (PhysFS needs it).");
        Console.WriteLine("  Protection: custom encryption key — decrypter tools get garbage.");
        Console.WriteLine("  Standard RPG Maker Decrypter tools will NOT work.");
        Console.WriteLine();
        Console.WriteLine("Done!");
        return 0;
    }
}
