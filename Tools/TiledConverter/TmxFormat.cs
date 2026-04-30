// =============================================================================
// TmxFormat — Read/write Tiled TMX map files (XML with CSV tile data)
// =============================================================================
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace TiledConverter;

// ============================================================================
// Data types
// ============================================================================

public sealed class TmxMap
{
    public int Width { get; set; }
    public int Height { get; set; }
    public int TileWidth { get; set; } = 32;
    public int TileHeight { get; set; } = 32;
    public List<TmxTileset> Tilesets { get; } = new();
    public List<TmxLayer> Layers { get; } = new();
    public List<TmxObjectGroup> ObjectGroups { get; } = new();
    public Dictionary<string, string> Properties { get; } = new();
}

public sealed class TmxTileset
{
    public int FirstGid { get; set; }
    public string Name { get; set; } = "";
    public int TileWidth { get; set; } = 32;
    public int TileHeight { get; set; } = 32;
    public int TileCount { get; set; }
    public int Columns { get; set; }
    public string? ImageSource { get; set; }
    public int ImageWidth { get; set; }
    public int ImageHeight { get; set; }
}

public sealed class TmxLayer
{
    public int Id { get; set; }
    public string Name { get; set; } = "";
    public int Width { get; set; }
    public int Height { get; set; }
    public int[] Data { get; set; } = Array.Empty<int>();
}

public sealed class TmxObjectGroup
{
    public int Id { get; set; }
    public string Name { get; set; } = "";
    public List<TmxObject> Objects { get; } = new();
}

public sealed class TmxObject
{
    public int Id { get; set; }
    public string Name { get; set; } = "";
    public string Type { get; set; } = "";
    public double X { get; set; }
    public double Y { get; set; }
    public double Width { get; set; }
    public double Height { get; set; }
    public Dictionary<string, string> Properties { get; } = new();
}

// ============================================================================
// Writer
// ============================================================================

public static class TmxWriter
{
    public static void Write(TmxMap map, string path)
    {
        var doc = new XDocument(new XDeclaration("1.0", "UTF-8", null));

        var root = new XElement("map",
            new XAttribute("version", "1.10"),
            new XAttribute("tiledversion", "1.11.0"),
            new XAttribute("orientation", "orthogonal"),
            new XAttribute("renderorder", "right-down"),
            new XAttribute("width", map.Width),
            new XAttribute("height", map.Height),
            new XAttribute("tilewidth", map.TileWidth),
            new XAttribute("tileheight", map.TileHeight),
            new XAttribute("infinite", 0),
            new XAttribute("nextlayerid", map.Layers.Count + map.ObjectGroups.Count + 1),
            new XAttribute("nextobjectid", map.ObjectGroups.Sum(g => g.Objects.Count) + 1));

        // Custom properties (RPG Maker metadata)
        if (map.Properties.Count > 0)
        {
            var props = new XElement("properties");
            foreach (var (k, v) in map.Properties)
            {
                props.Add(new XElement("property",
                    new XAttribute("name", k),
                    new XAttribute("value", v)));
            }
            root.Add(props);
        }

        // Tilesets
        foreach (var ts in map.Tilesets)
        {
            var el = new XElement("tileset",
                new XAttribute("firstgid", ts.FirstGid),
                new XAttribute("name", ts.Name),
                new XAttribute("tilewidth", ts.TileWidth),
                new XAttribute("tileheight", ts.TileHeight),
                new XAttribute("tilecount", ts.TileCount),
                new XAttribute("columns", ts.Columns));

            if (ts.ImageSource != null)
            {
                el.Add(new XElement("image",
                    new XAttribute("source", ts.ImageSource),
                    new XAttribute("width", ts.ImageWidth),
                    new XAttribute("height", ts.ImageHeight)));
            }
            root.Add(el);
        }

        // Tile layers (CSV encoding, one row per line for readability)
        foreach (var layer in map.Layers)
        {
            var sb = new StringBuilder();
            sb.AppendLine();
            for (int y = 0; y < layer.Height; y++)
            {
                for (int x = 0; x < layer.Width; x++)
                {
                    if (x > 0) sb.Append(',');
                    sb.Append(layer.Data[y * layer.Width + x]);
                }
                if (y < layer.Height - 1) sb.Append(',');
                sb.AppendLine();
            }

            root.Add(new XElement("layer",
                new XAttribute("id", layer.Id),
                new XAttribute("name", layer.Name),
                new XAttribute("width", layer.Width),
                new XAttribute("height", layer.Height),
                new XElement("data",
                    new XAttribute("encoding", "csv"),
                    sb.ToString())));
        }

        // Object groups (events)
        foreach (var group in map.ObjectGroups)
        {
            var grpElem = new XElement("objectgroup",
                new XAttribute("id", group.Id),
                new XAttribute("name", group.Name));

            foreach (var obj in group.Objects)
            {
                var objElem = new XElement("object",
                    new XAttribute("id", obj.Id),
                    new XAttribute("name", obj.Name),
                    new XAttribute("type", obj.Type),
                    new XAttribute("x", obj.X),
                    new XAttribute("y", obj.Y),
                    new XAttribute("width", obj.Width),
                    new XAttribute("height", obj.Height));

                if (obj.Properties.Count > 0)
                {
                    var oprops = new XElement("properties");
                    foreach (var (k, v) in obj.Properties)
                    {
                        var propElem = new XElement("property",
                            new XAttribute("name", k));
                        // Store large values (JSON) as element text for readability
                        if (v.Length > 200 || v.Contains('\n'))
                        {
                            propElem.Add(new XAttribute("type", "string"));
                            propElem.Value = v;
                        }
                        else
                        {
                            propElem.Add(new XAttribute("value", v));
                        }
                        oprops.Add(propElem);
                    }
                    objElem.Add(oprops);
                }
                grpElem.Add(objElem);
            }
            root.Add(grpElem);
        }

        doc.Add(root);
        doc.Save(path);
    }
}

// ============================================================================
// Reader
// ============================================================================

public static class TmxReader
{
    public static TmxMap Read(string path)
    {
        var doc = XDocument.Load(path);
        var root = doc.Root ?? throw new InvalidDataException("Empty TMX file");

        var map = new TmxMap
        {
            Width = (int)root.Attribute("width")!,
            Height = (int)root.Attribute("height")!,
            TileWidth = (int?)root.Attribute("tilewidth") ?? 32,
            TileHeight = (int?)root.Attribute("tileheight") ?? 32
        };

        // Properties
        var propsElem = root.Element("properties");
        if (propsElem != null)
        {
            foreach (var p in propsElem.Elements("property"))
            {
                string name = (string)p.Attribute("name")!;
                string val = (string?)p.Attribute("value") ?? p.Value;
                map.Properties[name] = val;
            }
        }

        // Tilesets
        foreach (var tsElem in root.Elements("tileset"))
        {
            var ts = new TmxTileset
            {
                FirstGid = (int)tsElem.Attribute("firstgid")!,
                Name = (string?)tsElem.Attribute("name") ?? "",
                TileWidth = (int?)tsElem.Attribute("tilewidth") ?? 32,
                TileHeight = (int?)tsElem.Attribute("tileheight") ?? 32,
                TileCount = (int?)tsElem.Attribute("tilecount") ?? 0,
                Columns = (int?)tsElem.Attribute("columns") ?? 0
            };
            var imgElem = tsElem.Element("image");
            if (imgElem != null)
            {
                ts.ImageSource = (string?)imgElem.Attribute("source");
                ts.ImageWidth = (int?)imgElem.Attribute("width") ?? 0;
                ts.ImageHeight = (int?)imgElem.Attribute("height") ?? 0;
            }
            map.Tilesets.Add(ts);
        }

        // Tile layers
        foreach (var layerElem in root.Elements("layer"))
        {
            var dataElem = layerElem.Element("data");
            if (dataElem == null) continue;

            string encoding = (string?)dataElem.Attribute("encoding") ?? "csv";
            if (encoding != "csv")
                throw new NotSupportedException(
                    $"TMX data encoding '{encoding}' not supported. Re-save the map with CSV encoding in Tiled.");

            int[] data = dataElem.Value.Trim()
                .Split(',', StringSplitOptions.RemoveEmptyEntries)
                .Select(s => int.Parse(s.Trim()))
                .ToArray();

            map.Layers.Add(new TmxLayer
            {
                Id = (int?)layerElem.Attribute("id") ?? 0,
                Name = (string?)layerElem.Attribute("name") ?? "",
                Width = (int)layerElem.Attribute("width")!,
                Height = (int)layerElem.Attribute("height")!,
                Data = data
            });
        }

        // Object groups
        foreach (var grpElem in root.Elements("objectgroup"))
        {
            var group = new TmxObjectGroup
            {
                Id = (int?)grpElem.Attribute("id") ?? 0,
                Name = (string?)grpElem.Attribute("name") ?? ""
            };

            foreach (var objElem in grpElem.Elements("object"))
            {
                var obj = new TmxObject
                {
                    Id = (int?)objElem.Attribute("id") ?? 0,
                    Name = (string?)objElem.Attribute("name") ?? "",
                    Type = (string?)objElem.Attribute("type") ?? "",
                    X = (double?)objElem.Attribute("x") ?? 0,
                    Y = (double?)objElem.Attribute("y") ?? 0,
                    Width = (double?)objElem.Attribute("width") ?? 0,
                    Height = (double?)objElem.Attribute("height") ?? 0
                };

                var objProps = objElem.Element("properties");
                if (objProps != null)
                {
                    foreach (var p in objProps.Elements("property"))
                    {
                        string pname = (string)p.Attribute("name")!;
                        string pval = (string?)p.Attribute("value") ?? p.Value;
                        obj.Properties[pname] = pval;
                    }
                }
                group.Objects.Add(obj);
            }
            map.ObjectGroups.Add(group);
        }

        return map;
    }
}
