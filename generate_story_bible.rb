
# Script to generate a comprehensive Story Bible from the game's script files

FILES = [
  "Data/Scripts/Story/Main_Story.rb",
  "Data/Scripts/Story/Main_Story_Quests.rb",
  "Data/Scripts/Story/Side_Quests.rb"
]

def parse_file(file_path)
  filename = File.basename(file_path)
  puts "# File: #{filename}\n\n"
  
  current_act = nil
  current_chapter = nil
  
  File.foreach(file_path) do |line|
    line.strip!
    
    # Detect Acts
    if line =~ /^#\s*ACT\s*(\d+):?\s*(.*)/i
      current_act = "Act #{$1}: #{$2}"
      puts "\n## #{current_act}\n\n"
      next
    end
    
    # Detect Chapters (headers)
    if line =~ /^#\s*Chapter\s*(\d+):?\s*(.*)/i
      current_chapter = "Chapter #{$1}: #{$2}"
      puts "\n### #{current_chapter}\n"
      next
    end
    
    # Detect Quest Definitions
    if line =~ /GameData::Quest\.define\s*:(\w+)/
      quest_id = $1
      puts "- **Quest:** `#{quest_id}`"
      next
    end
    
    # Detect Cutscene Definitions
    if line =~ /GameData::Cutscene\.define\s*:(\w+)/
      cutscene_id = $1
      puts "- [ ] `#{cutscene_id}`"
      next
    end
    
    # Detect Side Story Headers (roughly)
    if line =~ /^#\s*Side Story:\s*(.*)/i
      puts "\n### Side Story: #{$1}\n"
    end
  end
  puts "\n---\n\n"
end

puts "# Pokémon Shattered Crowns: Complete Event Index\n\n"
puts "Auto-generated from source code.\n\n"

FILES.each do |file|
  if File.exist?(file)
    parse_file(file)
  else
    puts "Start of Act 1\nFile not found: #{file}"
  end
end
