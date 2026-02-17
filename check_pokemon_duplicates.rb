# Check for duplicate Pokemon files in Plugins folder
# Usage: ruby check_pokemon_duplicates.rb

require 'fileutils'
require 'set'

PLUGIN_DIR = "Plugins/[SC] Script System/Pokemon"

puts "Checking for duplicates in #{PLUGIN_DIR}..."

files_by_name = Hash.new { |h, k| h[k] = [] }

Dir.glob("#{PLUGIN_DIR}/**/*.rb").each do |file|
  filename = File.basename(file)
  files_by_name[filename] << file
end

duplicates_found = 0
files_by_name.each do |filename, paths|
  if paths.length > 1
    duplicates_found += 1
    puts "\nDuplicate: #{filename}"
    paths.each { |path| puts "  - #{path}" }
    
    # Auto-fix suggestion: keep the one that isn't NORMAL type if possible (unless it is actually Normal type)
    # Heuristic: file size? Content?
    # For now just list them.
  end
end

puts "\nFound #{duplicates_found} items with duplicates."
