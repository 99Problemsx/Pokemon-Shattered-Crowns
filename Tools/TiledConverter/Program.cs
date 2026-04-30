// =============================================================================
// TiledConverter CLI — Convert between RPG Maker XP maps and Tiled TMX
//
// Usage:
//   TiledConverter export <Map###.rxdata> <output.tmx> [--tileset <name>]
//   TiledConverter import <map.tmx> <original.rxdata> <output.rxdata>
//   TiledConverter export-all <game-root> <output-dir>
//   TiledConverter import-all <tmx-dir> <game-root> [--output <dir>]
// =============================================================================
using System;
using System.IO;

namespace TiledConverter;

class Program
{
    static int Main(string[] args)
    {
        if (args.Length < 1)
        {
            PrintUsage();
            return 1;
        }

        try
        {
            return args[0].ToLowerInvariant() switch
            {
                "export"     => RunExport(args),
                "import"     => RunImport(args),
                "export-all" => RunExportAll(args),
                "import-all" => RunImportAll(args),
                "dump-events" => RunDumpEvents(args),
                _ => Error($"Unknown command: {args[0]}")
            };
        }
        catch (Exception ex)
        {
            Console.Error.WriteLine($"Error: {ex.Message}");
            return 1;
        }
    }

    static int RunExport(string[] args)
    {
        if (args.Length < 3)
            return Error("Usage: TiledConverter export <map.rxdata> <output.tmx> [--tileset <name>]");

        string rxdata = args[1];
        string tmx    = args[2];
        string? tilesetName = null;

        for (int i = 3; i < args.Length - 1; i++)
        {
            if (args[i] == "--tileset") tilesetName = args[++i];
        }

        if (!File.Exists(rxdata))
            return Error($"File not found: {rxdata}");

        MapConverter.ExportToTmx(rxdata, tmx, tilesetName);
        Console.WriteLine($"Exported: {rxdata} -> {tmx}");
        return 0;
    }

    static int RunImport(string[] args)
    {
        if (args.Length < 4)
            return Error("Usage: TiledConverter import <map.tmx> <original.rxdata> <output.rxdata>");

        string tmx      = args[1];
        string original = args[2];
        string output   = args[3];

        if (!File.Exists(tmx))
            return Error($"File not found: {tmx}");
        if (!File.Exists(original))
            return Error($"File not found: {original}");

        MapConverter.ImportFromTmx(tmx, original, output);
        Console.WriteLine($"Imported: {tmx} + {original} -> {output}");
        return 0;
    }

    static int RunExportAll(string[] args)
    {
        if (args.Length < 3)
            return Error("Usage: TiledConverter export-all <game-root> <output-dir>");

        string gameRoot = args[1];
        string outputDir = args[2];

        if (!Directory.Exists(gameRoot))
            return Error($"Directory not found: {gameRoot}");

        Console.WriteLine($"Exporting all maps from {gameRoot} to {outputDir}...");
        MapConverter.ExportAll(gameRoot, outputDir);
        return 0;
    }

    static int RunImportAll(string[] args)
    {
        if (args.Length < 3)
            return Error("Usage: TiledConverter import-all <tmx-dir> <game-root> [--output <dir>]");

        string tmxDir   = args[1];
        string gameRoot = args[2];
        string? outputDir = null;

        for (int i = 3; i < args.Length - 1; i++)
        {
            if (args[i] == "--output") outputDir = args[++i];
        }

        if (!Directory.Exists(tmxDir))
            return Error($"Directory not found: {tmxDir}");
        if (!Directory.Exists(gameRoot))
            return Error($"Directory not found: {gameRoot}");

        Console.WriteLine($"Importing all maps from {tmxDir}...");
        MapConverter.ImportAll(tmxDir, gameRoot, outputDir);
        return 0;
    }

    static void PrintUsage()
    {
        Console.WriteLine("TiledConverter - RPG Maker XP <-> Tiled TMX converter");
        Console.WriteLine();
        Console.WriteLine("Commands:");
        Console.WriteLine("  export      <map.rxdata> <output.tmx> [--tileset <name>]");
        Console.WriteLine("  import      <map.tmx> <original.rxdata> <output.rxdata>");
        Console.WriteLine("  export-all  <game-root> <output-dir>");
        Console.WriteLine("  import-all  <tmx-dir> <game-root> [--output <dir>]");
        Console.WriteLine();
        Console.WriteLine("export-all reads Tilesets.rxdata and MapInfos.rxdata from <game-root>/Data,");
        Console.WriteLine("generates autotile sheets, and exports all Map###.rxdata as TMX files.");
        Console.WriteLine();
        Console.WriteLine("import-all reads all Map###.tmx from <tmx-dir> and patches the matching");
        Console.WriteLine("Map###.rxdata files in <game-root>/Data with updated tile data.");
        Console.WriteLine("Events, metadata, and all non-tile data are preserved from the originals.");
        Console.WriteLine();
        Console.WriteLine("Tile ID mapping (direct 1:1):");
        Console.WriteLine("  GID/ID 0       = empty tile");
        Console.WriteLine("  GID/ID 1-383   = autotile patterns");
        Console.WriteLine("  GID/ID 384+    = tileset tiles");
    }

    static int Error(string msg) { Console.Error.WriteLine(msg); return 1; }

    static int RunDumpEvents(string[] args)
    {
        if (args.Length < 2)
            return Error("Usage: TiledConverter dump-events <map.rxdata> [event-id]");
        if (!File.Exists(args[1]))
            return Error($"File not found: {args[1]}");
        if (args.Length >= 3 && int.TryParse(args[2], out int eventId))
            EventDumper.DumpCommands(args[1], eventId);
        else
            EventDumper.Dump(args[1]);
        return 0;
    }
}
