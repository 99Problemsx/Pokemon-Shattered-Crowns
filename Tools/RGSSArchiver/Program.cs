// =============================================================================
// RGSSArchiver — CLI tool to create RGSSAD v1 encrypted archives
// Uses RgssadWriter / RgssadReader / FileCollector from the same project.
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
        string gameDir = ".";
        string outputFile = null!;
        bool verbose = false;

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
        outputFile ??= Path.Combine(gameDir, "Game.rgssad");

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
        Console.Write("  Creating archive...");

        using (var fs = new FileStream(outputFile, FileMode.Create, FileAccess.Write, FileShare.None, 1 << 16))
        using (var writer = new RgssadWriter(fs))
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
                    Console.Write($"\r  Creating archive... {count}/{entries.Count}");
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
        Console.WriteLine();
        Console.WriteLine("Options:");
        Console.WriteLine("  -d, --dir <path>     Game directory (default: current directory)");
        Console.WriteLine("  -o, --output <path>  Output file path (default: Game.rgssad in game dir)");
        Console.WriteLine("  -v, --verbose        Print every file being archived");
        Console.WriteLine("  -h, --help           Show this help");
        Console.WriteLine();
        Console.WriteLine("Archived folders: Data, Graphics, Audio, Plugins, PBS");
    }
}
