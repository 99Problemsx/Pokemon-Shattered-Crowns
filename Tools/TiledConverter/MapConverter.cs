// =============================================================================
// MapConverter — Convert between RPG Maker XP maps (.rxdata) and Tiled (.tmx)
//
// Tile ID mapping (1:1):
//   RPG Maker tile ID 0     = Tiled GID 0     (empty)
//   RPG Maker tile IDs 1-383  = Tiled GIDs 1-383  (autotile patterns)
//   RPG Maker tile IDs 384+   = Tiled GIDs 384+   (tileset tiles)
//
// The TMX defines two tilesets:
//   "rpgmaker_autotiles" firstgid=1   (IDs 1-383, autotile patterns)
//   "rpgmaker_tileset"   firstgid=384 (IDs 384+, regular tileset)
// =============================================================================
using System;
using System.Collections.Generic;
using System.IO;

namespace TiledConverter;

public static class MapConverter
{
    private const int AUTOTILE_COUNT = 8;
    private const int TILES_PER_AUTOTILE = 48;
    private const int TILESET_START = AUTOTILE_COUNT * TILES_PER_AUTOTILE; // 384

    // ========================================================================
    // Export single map: .rxdata → .tmx
    // ========================================================================

    public static void ExportToTmx(string rxdataPath, string tmxPath, string? tilesetName)
    {
        ExportToTmx(rxdataPath, tmxPath, tilesetName, null);
    }

    public static void ExportToTmx(string rxdataPath, string tmxPath, string? tilesetName,
                                     RpgTileset? tilesetInfo)
    {
        RubyValue root;
        using (var fs = File.OpenRead(rxdataPath))
            root = new MarshalReader(fs).Read();

        if (root is not RubyObject map || map.ClassName != "RPG::Map")
            throw new InvalidDataException("File does not contain an RPG::Map object");

        int tilesetId = GetInt(map, "@tileset_id");
        int width     = GetInt(map, "@width");
        int height    = GetInt(map, "@height");

        var tableData = map.Get("@data") as RubyUserDefined
            ?? throw new InvalidDataException("Missing or invalid @data (Table)");
        var table = ParseTable(tableData.Data);

        if (table.XSize != width || table.YSize != height)
            throw new InvalidDataException(
                $"Table size ({table.XSize}x{table.YSize}) != map size ({width}x{height})");

        // Determine tileset tile count from actual data
        int maxTilesetTile = 0;
        for (int i = 0; i < table.Data.Length; i++)
        {
            int id = table.Data[i];
            if (id >= TILESET_START)
                maxTilesetTile = Math.Max(maxTilesetTile, id - TILESET_START + 1);
        }
        if (maxTilesetTile == 0) maxTilesetTile = 256;

        // Resolve tileset name from Tilesets.rxdata or fallback
        string tsName = tilesetInfo?.TilesetName ?? tilesetName ?? $"tileset_{tilesetId}";
        int tsRows = (maxTilesetTile + 7) / 8;

        // Resolve relative image paths
        string autotileImage = tilesetInfo != null
            ? $"autotiles_{tilesetId}.png"
            : "autotiles.png";
        string tilesetImage = tilesetInfo != null
            ? $"../Graphics/Tilesets/{tilesetInfo.TilesetName}.png"
            : $"{tsName}.png";

        // Build TMX
        var tmx = new TmxMap { Width = width, Height = height };
        tmx.Properties["tileset_id"] = tilesetId.ToString();
        tmx.Properties["source"] = Path.GetFileName(rxdataPath);
        if (tilesetInfo != null)
            tmx.Properties["tileset_name"] = tilesetInfo.Name;

        // Autotile tileset (covers GIDs 1-383)
        tmx.Tilesets.Add(new TmxTileset
        {
            FirstGid   = 1,
            Name       = "rpgmaker_autotiles",
            TileCount  = TILESET_START - 1,
            Columns    = 8,
            TileWidth  = 32,
            TileHeight = 32,
            ImageSource = autotileImage,
            ImageWidth  = 256,
            ImageHeight = ((TILESET_START - 1 + 7) / 8) * 32
        });

        // Regular tileset (points to actual tileset image)
        tmx.Tilesets.Add(new TmxTileset
        {
            FirstGid   = TILESET_START,
            Name       = tsName,
            TileCount  = maxTilesetTile,
            Columns    = 8,
            TileWidth  = 32,
            TileHeight = 32,
            ImageSource = tilesetImage,
            ImageWidth  = 256,
            ImageHeight = tsRows * 32
        });

        // Tile layers (RPG Maker XP uses 3 layers)
        int layerId = 1;
        for (int z = 0; z < table.ZSize; z++)
        {
            var layer = new TmxLayer
            {
                Id     = layerId++,
                Name   = $"Layer {z + 1}",
                Width  = width,
                Height = height,
                Data   = new int[width * height]
            };

            for (int y = 0; y < height; y++)
                for (int x = 0; x < width; x++)
                    layer.Data[y * width + x] = table.Get(x, y, z);

            tmx.Layers.Add(layer);
        }

        // Event object layer — full event data serialized as JSON
        var events = map.Get("@events") as RubyHash;
        if (events != null && events.Entries.Count > 0)
        {
            var objGroup = new TmxObjectGroup
            {
                Id = layerId++,
                Name = "Events"
            };

            int objId = 1;
            foreach (var (key, value) in events.Entries)
            {
                if (key is not RubyFixnum eventId) continue;
                if (value is not RubyObject ev) continue;

                string evName = "";
                var nameVal = ev.Get("@name");
                if (nameVal is RubyString ns) evName = ns.Text;

                int evX = 0, evY = 0;
                var xVal = ev.Get("@x");
                var yVal = ev.Get("@y");
                if (xVal is RubyFixnum fx) evX = fx.Value;
                if (yVal is RubyFixnum fy) evY = fy.Value;

                var obj = new TmxObject
                {
                    Id = objId++,
                    Name = evName,
                    Type = "Event",
                    X = evX * 32,
                    Y = evY * 32,
                    Width = 32,
                    Height = 32
                };
                obj.Properties["event_id"] = eventId.Value.ToString();

                var pages = ev.Get("@pages");
                if (pages is RubyArray pagesArr)
                    obj.Properties["pages"] = pagesArr.Items.Count.ToString();

                // Serialize complete event data as JSON
                obj.Properties["event_data"] = EventSerializer.Serialize(ev);

                objGroup.Objects.Add(obj);
            }

            tmx.ObjectGroups.Add(objGroup);
        }

        TmxWriter.Write(tmx, tmxPath);
    }

    // ========================================================================
    // Export all maps: batch export with tileset info and autotile generation
    // ========================================================================

    public static void ExportAll(string gameRoot, string outputDir)
    {
        string dataDir = Path.Combine(gameRoot, "Data");
        string tilesetsPath = Path.Combine(dataDir, "Tilesets.rxdata");
        string mapInfosPath = Path.Combine(dataDir, "MapInfos.rxdata");
        string autotilesDir = Path.Combine(gameRoot, "Graphics", "Autotiles");

        if (!Directory.Exists(dataDir))
            throw new DirectoryNotFoundException($"Data directory not found: {dataDir}");

        // Read tilesets and map infos
        List<RpgTileset?>? tilesets = null;
        Dictionary<int, RpgMapInfo>? mapInfos = null;

        if (File.Exists(tilesetsPath))
        {
            tilesets = GameDataReader.ReadTilesets(tilesetsPath);
            Console.WriteLine($"Loaded {tilesets.Count - 1} tilesets from Tilesets.rxdata");
        }

        if (File.Exists(mapInfosPath))
        {
            mapInfos = GameDataReader.ReadMapInfos(mapInfosPath);
            Console.WriteLine($"Loaded {mapInfos.Count} map infos from MapInfos.rxdata");
        }

        Directory.CreateDirectory(outputDir);

        // Generate autotile sheets per tileset (keyed by tileset ID)
        var generatedAutotiles = new HashSet<int>();

        // Find all Map###.rxdata files
        var mapFiles = Directory.GetFiles(dataDir, "Map???.rxdata");
        Array.Sort(mapFiles);

        int exported = 0;
        foreach (string mapFile in mapFiles)
        {
            string fileName = Path.GetFileNameWithoutExtension(mapFile);
            // Extract map ID from filename (e.g. "Map001" → 1)
            if (!int.TryParse(fileName.AsSpan(3), out int mapId))
                continue;

            // Get map info for name
            string mapLabel = mapInfos != null && mapInfos.TryGetValue(mapId, out var info)
                ? $"{fileName} ({info.Name})"
                : fileName;

            try
            {
                // Peek at tileset_id to resolve tileset info
                RpgTileset? tsInfo = null;
                int tilesetId = PeekTilesetId(mapFile);

                if (tilesets != null && tilesetId > 0 && tilesetId < tilesets.Count)
                {
                    tsInfo = tilesets[tilesetId];

                    // Generate autotile sheet for this tileset if not done yet
                    if (tsInfo != null && !generatedAutotiles.Contains(tilesetId))
                    {
                        string autoSheet = Path.Combine(outputDir, $"autotiles_{tilesetId}.png");
                        if (Directory.Exists(autotilesDir))
                        {
                            try
                            {
                                AutotileGenerator.GenerateSheet(
                                    tsInfo.AutotileNames, autotilesDir, autoSheet);
                                Console.WriteLine($"  Generated autotile sheet: autotiles_{tilesetId}.png");
                            }
                            catch (Exception ex)
                            {
                                Console.Error.WriteLine(
                                    $"  Warning: Failed to generate autotile sheet for tileset {tilesetId}: {ex.Message}");
                            }
                        }
                        generatedAutotiles.Add(tilesetId);
                    }
                }

                string tmxPath = Path.Combine(outputDir, $"{fileName}.tmx");
                ExportToTmx(mapFile, tmxPath, null, tsInfo);
                Console.WriteLine($"  Exported: {mapLabel}");
                exported++;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine($"  FAILED: {mapLabel} - {ex.Message}");
            }
        }

        Console.WriteLine($"\nExported {exported}/{mapFiles.Length} maps to {outputDir}");
    }

    // ========================================================================
    // Import all: batch import from TMX directory back to rxdata
    // ========================================================================

    public static void ImportAll(string tmxDir, string gameRoot, string? outputDir = null)
    {
        string dataDir = Path.Combine(gameRoot, "Data");
        string outDir = outputDir ?? dataDir;

        if (!Directory.Exists(dataDir))
            throw new DirectoryNotFoundException($"Data directory not found: {dataDir}");
        if (!Directory.Exists(tmxDir))
            throw new DirectoryNotFoundException($"TMX directory not found: {tmxDir}");

        Directory.CreateDirectory(outDir);

        var tmxFiles = Directory.GetFiles(tmxDir, "Map???.tmx");
        Array.Sort(tmxFiles);

        int imported = 0;
        foreach (string tmxFile in tmxFiles)
        {
            string fileName = Path.GetFileNameWithoutExtension(tmxFile);
            string rxdataPath = Path.Combine(dataDir, $"{fileName}.rxdata");

            if (!File.Exists(rxdataPath))
            {
                Console.Error.WriteLine($"  SKIPPED: {fileName}.tmx (no matching {fileName}.rxdata)");
                continue;
            }

            try
            {
                string outputPath = Path.Combine(outDir, $"{fileName}.rxdata");
                ImportFromTmx(tmxFile, rxdataPath, outputPath);
                Console.WriteLine($"  Imported: {fileName}");
                imported++;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine($"  FAILED: {fileName} - {ex.Message}");
            }
        }

        Console.WriteLine($"\nImported {imported}/{tmxFiles.Length} maps");
    }

    // ========================================================================
    // Import: .tmx + original .rxdata → new .rxdata
    // Tile data replaced from TMX. Events reconstructed from event_data JSON
    // when present; otherwise preserved from original.
    // ========================================================================

    public static void ImportFromTmx(string tmxPath, string originalRxdata, string outputPath)
    {
        // Read original map (preserves BGM, metadata, etc.)
        RubyValue root;
        using (var fs = File.OpenRead(originalRxdata))
            root = new MarshalReader(fs).Read();

        if (root is not RubyObject map || map.ClassName != "RPG::Map")
            throw new InvalidDataException("Original file does not contain an RPG::Map object");

        // Read TMX
        var tmx = TmxReader.Read(tmxPath);
        if (tmx.Layers.Count < 1)
            throw new InvalidDataException("TMX file has no tile layers");

        int width  = tmx.Width;
        int height = tmx.Height;
        int zSize  = Math.Min(tmx.Layers.Count, 3);

        // Build new Table from TMX tile data
        var table = new RpgTable(3, width, height, zSize);
        for (int z = 0; z < zSize; z++)
        {
            var layer = tmx.Layers[z];
            for (int y = 0; y < height; y++)
            {
                for (int x = 0; x < width; x++)
                {
                    int idx = y * width + x;
                    int gid = (idx < layer.Data.Length) ? layer.Data[idx] : 0;
                    gid &= 0x1FFFFFFF; // strip Tiled flip flags (bits 29-31)
                    table.Set(x, y, z, (short)gid);
                }
            }
        }

        // Patch the map object
        map.Set("@width",  new RubyFixnum(width));
        map.Set("@height", new RubyFixnum(height));
        map.Set("@data",   new RubyUserDefined("Table", table.Serialize()));

        // Reconstruct events from TMX object layer
        var eventsGroup = tmx.ObjectGroups.Find(g => g.Name == "Events");
        if (eventsGroup != null)
        {
            var originalEvents = map.Get("@events") as RubyHash;
            var newEvents = new RubyHash();

            foreach (var obj in eventsGroup.Objects)
            {
                if (obj.Type != "Event") continue;

                // If full event_data JSON present, deserialize it
                if (obj.Properties.TryGetValue("event_data", out string? jsonData)
                    && !string.IsNullOrEmpty(jsonData))
                {
                    var ev = EventSerializer.Deserialize(jsonData);
                    // Update position from Tiled object (user may have moved it)
                    int newX = (int)(obj.X / 32);
                    int newY = (int)(obj.Y / 32);
                    ev.Set("@x", new RubyFixnum(newX));
                    ev.Set("@y", new RubyFixnum(newY));
                    // Update name from Tiled object
                    if (!string.IsNullOrEmpty(obj.Name))
                        ev.Set("@name", new RubyString(obj.Name));

                    int evId = ((RubyFixnum)ev.Get("@id")!).Value;
                    newEvents.Entries.Add((new RubyFixnum(evId), ev));
                }
                // Fallback: copy event from original by event_id
                else if (obj.Properties.TryGetValue("event_id", out string? idStr)
                         && int.TryParse(idStr, out int eventId)
                         && originalEvents != null)
                {
                    foreach (var (k, v) in originalEvents.Entries)
                    {
                        if (k is RubyFixnum fk && fk.Value == eventId)
                        {
                            // Update position from Tiled object
                            if (v is RubyObject origEv)
                            {
                                origEv.Set("@x", new RubyFixnum((int)(obj.X / 32)));
                                origEv.Set("@y", new RubyFixnum((int)(obj.Y / 32)));
                            }
                            newEvents.Entries.Add((new RubyFixnum(eventId), v));
                            break;
                        }
                    }
                }
            }

            map.Set("@events", newEvents);
        }

        // Write output
        using var outFs = File.Create(outputPath);
        new MarshalWriter(outFs).Write(root);
    }

    // ========================================================================
    // Table helpers — RPG Maker XP Table binary format:
    //   int32 dim, int32 xsize, int32 ysize, int32 zsize, int32 total
    //   int16[total] data   (index = x + y*xsize + z*xsize*ysize)
    // ========================================================================

    public struct RpgTable
    {
        public int Dim, XSize, YSize, ZSize;
        public short[] Data;

        public RpgTable(int dim, int xSize, int ySize, int zSize)
        {
            Dim = dim; XSize = xSize; YSize = ySize; ZSize = zSize;
            Data = new short[xSize * ySize * zSize];
        }

        public readonly int Get(int x, int y, int z)
            => Data[x + y * XSize + z * XSize * YSize];

        public void Set(int x, int y, int z, short value)
            => Data[x + y * XSize + z * XSize * YSize] = value;

        public readonly byte[] Serialize()
        {
            int total = XSize * YSize * ZSize;
            byte[] buf = new byte[20 + total * 2];
            WriteInt32(buf, 0, Dim);
            WriteInt32(buf, 4, XSize);
            WriteInt32(buf, 8, YSize);
            WriteInt32(buf, 12, ZSize);
            WriteInt32(buf, 16, total);
            for (int i = 0; i < total; i++)
                WriteInt16(buf, 20 + i * 2, Data[i]);
            return buf;
        }

        private static void WriteInt32(byte[] buf, int offset, int value)
        {
            buf[offset]     = (byte)(value & 0xFF);
            buf[offset + 1] = (byte)((value >> 8) & 0xFF);
            buf[offset + 2] = (byte)((value >> 16) & 0xFF);
            buf[offset + 3] = (byte)((value >> 24) & 0xFF);
        }

        private static void WriteInt16(byte[] buf, int offset, short value)
        {
            buf[offset]     = (byte)(value & 0xFF);
            buf[offset + 1] = (byte)((value >> 8) & 0xFF);
        }
    }

    public static RpgTable ParseTable(byte[] data)
    {
        if (data.Length < 20)
            throw new InvalidDataException("Table data too short");

        int dim   = BitConverter.ToInt32(data, 0);
        int xs    = BitConverter.ToInt32(data, 4);
        int ys    = BitConverter.ToInt32(data, 8);
        int zs    = BitConverter.ToInt32(data, 12);
        int total = BitConverter.ToInt32(data, 16);

        if (total != xs * ys * zs)
            throw new InvalidDataException($"Table total ({total}) != {xs}*{ys}*{zs}");
        if (data.Length < 20 + total * 2)
            throw new InvalidDataException($"Table data truncated ({data.Length} < {20 + total * 2})");

        var table = new RpgTable { Dim = dim, XSize = xs, YSize = ys, ZSize = zs, Data = new short[total] };
        for (int i = 0; i < total; i++)
            table.Data[i] = BitConverter.ToInt16(data, 20 + i * 2);
        return table;
    }

    private static int GetInt(RubyObject obj, string name)
    {
        var val = obj.Get(name) ?? throw new InvalidDataException($"Missing {name}");
        return val is RubyFixnum f ? f.Value : throw new InvalidDataException($"{name} is not a Fixnum");
    }

    private static int PeekTilesetId(string rxdataPath)
    {
        RubyValue root;
        using (var fs = File.OpenRead(rxdataPath))
            root = new MarshalReader(fs).Read();

        if (root is RubyObject map && map.ClassName == "RPG::Map")
        {
            var val = map.Get("@tileset_id");
            if (val is RubyFixnum f) return f.Value;
        }
        return 0;
    }
}
