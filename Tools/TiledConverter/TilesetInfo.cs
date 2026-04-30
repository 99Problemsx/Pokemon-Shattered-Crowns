// =============================================================================
// TilesetInfo — Parse Tilesets.rxdata and MapInfos.rxdata
// =============================================================================
using System;
using System.Collections.Generic;
using System.IO;

namespace TiledConverter;

public sealed class RpgTileset
{
    public int Id { get; set; }
    public string Name { get; set; } = "";
    public string TilesetName { get; set; } = "";
    public string[] AutotileNames { get; set; } = new string[7];
    public string PanoramaName { get; set; } = "";
    public string BattlebackName { get; set; } = "";
}

public sealed class RpgMapInfo
{
    public int Id { get; set; }
    public string Name { get; set; } = "";
    public int ParentId { get; set; }
    public int Order { get; set; }
}

public static class GameDataReader
{
    /// <summary>
    /// Reads Tilesets.rxdata → array of RPG::Tileset (index 0 is nil).
    /// </summary>
    public static List<RpgTileset?> ReadTilesets(string path)
    {
        RubyValue root;
        using (var fs = File.OpenRead(path))
            root = new MarshalReader(fs).Read();

        if (root is not RubyArray arr)
            throw new InvalidDataException("Tilesets.rxdata does not contain an Array");

        var result = new List<RpgTileset?>();
        foreach (var item in arr.Items)
        {
            if (item is not RubyObject obj || obj.ClassName != "RPG::Tileset")
            {
                result.Add(null);
                continue;
            }

            var ts = new RpgTileset
            {
                Id = GetInt(obj, "@id", 0),
                Name = GetString(obj, "@name"),
                TilesetName = GetString(obj, "@tileset_name"),
                PanoramaName = GetString(obj, "@panorama_name"),
                BattlebackName = GetString(obj, "@battleback_name"),
            };

            var autoNames = obj.Get("@autotile_names");
            if (autoNames is RubyArray autoArr)
            {
                for (int i = 0; i < Math.Min(autoArr.Items.Count, 7); i++)
                    ts.AutotileNames[i] = StringValue(autoArr.Items[i]);
            }

            result.Add(ts);
        }

        return result;
    }

    /// <summary>
    /// Reads MapInfos.rxdata → dictionary of map_id → RPG::MapInfo.
    /// </summary>
    public static Dictionary<int, RpgMapInfo> ReadMapInfos(string path)
    {
        RubyValue root;
        using (var fs = File.OpenRead(path))
            root = new MarshalReader(fs).Read();

        if (root is not RubyHash hash)
            throw new InvalidDataException("MapInfos.rxdata does not contain a Hash");

        var result = new Dictionary<int, RpgMapInfo>();
        foreach (var (key, value) in hash.Entries)
        {
            if (key is not RubyFixnum id) continue;
            if (value is not RubyObject obj) continue;

            result[id.Value] = new RpgMapInfo
            {
                Id = id.Value,
                Name = GetString(obj, "@name"),
                ParentId = GetInt(obj, "@parent_id", 0),
                Order = GetInt(obj, "@order", 0)
            };
        }

        return result;
    }

    private static int GetInt(RubyObject obj, string name, int fallback = 0)
    {
        var v = obj.Get(name);
        return v is RubyFixnum f ? f.Value : fallback;
    }

    private static string GetString(RubyObject obj, string name)
    {
        var v = obj.Get(name);
        return StringValue(v);
    }

    private static string StringValue(RubyValue? v)
    {
        return v is RubyString s ? s.Text : "";
    }
}
