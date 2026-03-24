// =============================================================================
// FileCollector — Scans game directories and collects archivable files
// =============================================================================
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace RGSSArchiver;

public static class FileCollector
{
    // Folders that belong inside the encrypted archive
    public static readonly string[] ARCHIVE_FOLDERS =
    {
        "Data", "Graphics", "Audio", "Plugins", "PBS", "Fonts"
    };

    // Extensions to skip (backups, temp files, OS junk)
    public static readonly HashSet<string> EXCLUDE_EXT = new(StringComparer.OrdinalIgnoreCase)
    {
        ".bak", ".tmp", ".log", ".DS_Store"
    };

    // Files to always skip
    public static readonly HashSet<string> EXCLUDE_FILES = new(StringComparer.OrdinalIgnoreCase)
    {
        "Thumbs.db", ".gitkeep", ".gitignore", "desktop.ini"
    };

    public record CollectedFile(string RelativePath, string FullPath, long Size);

    public record FolderSummary(string Folder, List<CollectedFile> Files, long TotalBytes);

    /// <summary>
    /// Collects all archivable files from a game directory.
    /// </summary>
    public static List<FolderSummary> Collect(string gameDir)
    {
        var result = new List<FolderSummary>();

        foreach (var folder in ARCHIVE_FOLDERS)
        {
            var fullFolder = Path.Combine(gameDir, folder);
            if (!Directory.Exists(fullFolder))
                continue;

            var files = Directory.GetFiles(fullFolder, "*", SearchOption.AllDirectories)
                .Where(f =>
                {
                    var name = Path.GetFileName(f);
                    var ext = Path.GetExtension(f);
                    return !EXCLUDE_EXT.Contains(ext) && !EXCLUDE_FILES.Contains(name);
                })
                .OrderBy(f => f, StringComparer.OrdinalIgnoreCase)
                .Select(f =>
                {
                    var rel = Path.GetRelativePath(gameDir, f).Replace('/', '\\');
                    var info = new FileInfo(f);
                    return new CollectedFile(rel, f, info.Length);
                })
                .ToList();

            long totalBytes = files.Sum(f => f.Size);
            result.Add(new FolderSummary(folder, files, totalBytes));
        }

        return result;
    }

    /// <summary>
    /// Returns true if the given filename or extension should be excluded.
    /// </summary>
    public static bool ShouldExclude(string fileName)
    {
        var ext = Path.GetExtension(fileName);
        var name = Path.GetFileName(fileName);
        return EXCLUDE_EXT.Contains(ext) || EXCLUDE_FILES.Contains(name);
    }
}
