#!/usr/bin/env ruby
# Generates Data/sc_data.rxdata — a Marshal'd hash containing all SC Script
# System .rb data files grouped by directory.  This file is loaded at runtime
# via load_data (which goes through PhysFS and can read from RGSSAD archives).
#
# Format:  { "dir/path" => [ ["relative/file.rb", "content"], ... ], ... }

require 'fileutils'

base = ARGV[0] || "."

dirs = {
  "Plugins/[SC] Script System/Types"          => "Plugins/[SC] Script System/Types",
  "Plugins/[SC] Script System/Abilities"      => "Plugins/[SC] Script System/Abilities",
  "Plugins/[SC] Script System/Moves"          => "Plugins/[SC] Script System/Moves",
  "Plugins/[SC] Script System/Items"          => "Plugins/[SC] Script System/Items",
  "Plugins/[SC] Script System/Pokemon"        => "Plugins/[SC] Script System/Pokemon",
  "Plugins/[SC] Script System/Trainers"       => "Plugins/[SC] Script System/Trainers",
  "Plugins/[SC] Script System/TrainerTypes"   => "Plugins/[SC] Script System/TrainerTypes",
  "Plugins/[SC] Script System/Encounters"     => "Plugins/[SC] Script System/Encounters",
  "Plugins/[SC] Script System/Ribbons"        => "Plugins/[SC] Script System/Ribbons",
  "Plugins/[SC] Script System/Maps"           => "Plugins/[SC] Script System/Maps",
  "Plugins/[SC] Script System/Animations"     => "Plugins/[SC] Script System/Animations",
  "Data/Scripts/Config"                        => "Data/Scripts/Config",
  "Data/Scripts/Dungeons"                      => "Data/Scripts/Dungeons",
  "Data/Scripts/Story"                         => "Data/Scripts/Story",
  "Data/Scripts/BattleFacility"                => "Data/Scripts/BattleFacility",
  "Data/Scripts/Examples"                      => "Data/Scripts/Examples",
  "Data/Scripts/Animations"                    => "Data/Scripts/Animations",
}

# DBK plugin folders
["Dynamax", "Raid Battles", "SOS Battles", "Terastallization", "Wonder Launcher", "Z-Power"].each do |name|
  key = "Plugins/[SC] Script System/Plugins/[DBK] #{name}"
  dirs[key] = key
end

data = {}
total = 0

dirs.each do |key, path|
  full = File.join(base, path)
  next unless Dir.exist?(full)
  # Escape glob metacharacters [ ] { } in the path
  escaped = full.gsub(/[\[\]{}]/) { |c| "\\#{c}" }
  files = Dir.glob(File.join(escaped, "**", "*.rb")).sort
  next if files.empty?
  entries = files.map do |f|
    rel = f.sub(%r{^\./}, "").gsub("\\", "/")
    # Strip base path prefix if present
    rel = rel.sub(%r{^#{Regexp.escape(base)}/}, "") if base != "."
    content = File.read(f, encoding: "UTF-8")
    total += 1
    [rel, content]
  end
  data[key] = entries
end

out_path = File.join(base, "Data", "sc_data.rxdata")
File.binwrite(out_path, Marshal.dump(data))
puts "Generated #{out_path}:"
puts "  #{data.size} directories, #{total} files, #{File.size(out_path)} bytes"
data.each { |k, v| puts "  #{k}: #{v.size} files" }
