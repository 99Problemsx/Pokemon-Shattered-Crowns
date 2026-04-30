// =============================================================================
// AutotileGenerator — Generate 48-pattern autotile sheets from RPG Maker XP
//                     autotile source images using SkiaSharp.
//
// Source: 96×128 (full autotile) or 32×32 (single tile)
// Output: 32×(48*32) = 32×1536 per autotile (one column, 48 rows)
//
// The AUTOTILE_PATTERNS table is from RPG Maker XP's TileDrawingHelper.
// Each of the 48 patterns is composed of 4 quadrants (16×16) from the source.
// =============================================================================
using System;
using System.IO;
using SkiaSharp;

namespace TiledConverter;

public static class AutotileGenerator
{
    private const int TILE = 32;
    private const int HALF = 16;
    private const int PATTERNS = 48;

    // Same table as TileDrawingHelper::AUTOTILE_PATTERNS in the game.
    // 6 rows × 8 columns → 48 patterns. Each pattern = [TL, TR, BL, BR] (1-indexed).
    private static readonly int[][][] Patterns =
    {
        new[] { new[]{27,28,33,34}, new[]{5,28,33,34}, new[]{27,6,33,34}, new[]{5,6,33,34},
                new[]{27,28,33,12}, new[]{5,28,33,12}, new[]{27,6,33,12}, new[]{5,6,33,12} },
        new[] { new[]{27,28,11,34}, new[]{5,28,11,34}, new[]{27,6,11,34}, new[]{5,6,11,34},
                new[]{27,28,11,12}, new[]{5,28,11,12}, new[]{27,6,11,12}, new[]{5,6,11,12} },
        new[] { new[]{25,26,31,32}, new[]{25,6,31,32}, new[]{25,26,31,12}, new[]{25,6,31,12},
                new[]{15,16,21,22}, new[]{15,16,21,12}, new[]{15,16,11,22}, new[]{15,16,11,12} },
        new[] { new[]{29,30,35,36}, new[]{29,30,11,36}, new[]{5,30,35,36}, new[]{5,30,11,36},
                new[]{39,40,45,46}, new[]{5,40,45,46}, new[]{39,6,45,46}, new[]{5,6,45,46} },
        new[] { new[]{25,30,31,36}, new[]{15,16,45,46}, new[]{13,14,19,20}, new[]{13,14,19,12},
                new[]{17,18,23,24}, new[]{17,18,11,24}, new[]{41,42,47,48}, new[]{5,42,47,48} },
        new[] { new[]{37,38,43,44}, new[]{37,6,43,44}, new[]{13,18,19,24}, new[]{13,14,43,44},
                new[]{37,42,43,48}, new[]{17,18,47,48}, new[]{13,18,43,48}, new[]{1,2,7,8} }
    };

    /// <summary>
    /// Generate a combined autotile sheet for all 7 autotiles of a tileset.
    /// Output: 256×1536 image (8 columns × 48 rows of 32×32 tiles).
    /// Column 0 = blank (autotile 0), columns 1-7 = autotiles 1-7.
    /// Covers GIDs 1–383 when firstgid=1.
    /// </summary>
    public static void GenerateSheet(string[] autotileNames, string autotilesDir, string outputPath)
    {
        int columns = 8;  // autotile 0 (blank) + 7 real autotiles
        int rows = PATTERNS;
        int width = columns * TILE;
        int height = rows * TILE;

        var info = new SKImageInfo(width, height, SKColorType.Rgba8888, SKAlphaType.Premul);
        using var surface = SKSurface.Create(info);
        var canvas = surface.Canvas;
        canvas.Clear(SKColors.Transparent);

        for (int at = 0; at < 7; at++)
        {
            string name = autotileNames[at];
            if (string.IsNullOrEmpty(name)) continue;

            string? imgPath = FindImage(autotilesDir, name);
            if (imgPath == null) continue;

            using var src = SKBitmap.Decode(imgPath);
            if (src == null) continue;

            int col = at + 1; // column in output (0 = blank autotile)
            RenderAutotile(canvas, src, col);
        }

        using var image = surface.Snapshot();
        using var data = image.Encode(SKEncodedImageFormat.Png, 100);
        using var fs = File.Create(outputPath);
        data.SaveTo(fs);
    }

    /// <summary>
    /// Generate a pattern sheet for a single autotile.
    /// Output: 32×1536 (1 column × 48 rows).
    /// </summary>
    public static void GenerateSingle(string imagePath, string outputPath)
    {
        using var src = SKBitmap.Decode(imagePath)
            ?? throw new FileNotFoundException($"Cannot load: {imagePath}");

        var info = new SKImageInfo(TILE, PATTERNS * TILE, SKColorType.Rgba8888, SKAlphaType.Premul);
        using var surface = SKSurface.Create(info);
        var canvas = surface.Canvas;
        canvas.Clear(SKColors.Transparent);

        RenderAutotile(canvas, src, 0);

        using var image = surface.Snapshot();
        using var data = image.Encode(SKEncodedImageFormat.Png, 100);
        using var fs = File.Create(outputPath);
        data.SaveTo(fs);
    }

    private static void RenderAutotile(SKCanvas canvas, SKBitmap src, int destCol)
    {
        bool isSingle = (src.Height <= TILE);
        int destX = destCol * TILE;

        for (int id = 0; id < PATTERNS; id++)
        {
            int destY = id * TILE;

            if (isSingle)
            {
                // Single-tile autotile: just repeat the 32×32 for all 48 patterns
                var srcRect = new SKRect(0, 0, Math.Min(src.Width, TILE), Math.Min(src.Height, TILE));
                var dstRect = new SKRect(destX, destY, destX + TILE, destY + TILE);
                canvas.DrawBitmap(src, srcRect, dstRect);
            }
            else
            {
                // Full autotile (96×128): compose 4 quadrants
                int row = id >> 3;   // id / 8
                int col = id & 7;    // id % 8
                int[] pattern = Patterns[row][col];

                for (int q = 0; q < 4; q++)
                {
                    int chunk = pattern[q] - 1; // 0-indexed
                    int sx = (chunk % 6) * HALF;
                    int sy = (chunk / 6) * HALF;
                    int dx = destX + (q % 2) * HALF;
                    int dy = destY + (q / 2) * HALF;

                    var srcRect = new SKRect(sx, sy, sx + HALF, sy + HALF);
                    var dstRect = new SKRect(dx, dy, dx + HALF, dy + HALF);
                    canvas.DrawBitmap(src, srcRect, dstRect);
                }
            }
        }
    }

    /// <summary>Find an image file with common extensions.</summary>
    public static string? FindImage(string dir, string name)
    {
        if (string.IsNullOrEmpty(name) || !Directory.Exists(dir)) return null;
        string[] extensions = { ".png", ".jpg", ".bmp", ".gif", "" };
        foreach (string ext in extensions)
        {
            string path = Path.Combine(dir, name + ext);
            if (File.Exists(path)) return path;
        }
        // Try case-insensitive search
        foreach (var file in Directory.GetFiles(dir))
        {
            string fn = Path.GetFileNameWithoutExtension(file);
            if (fn.Equals(name, StringComparison.OrdinalIgnoreCase))
                return file;
        }
        return null;
    }
}
