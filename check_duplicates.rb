
# Script to check for duplicate cutscene bodies
file_path = "Data/Scripts/Story/Main_Story.rb"

cutscenes = {}
current_cutscene = nil
current_body = []

File.foreach(file_path) do |line|
  if line =~ /GameData::Cutscene\.define\s*:(\w+)/
    # Store previous cutscene
    if current_cutscene
      body_str = current_body.join("\n").strip
      cutscenes[body_str] ||= []
      cutscenes[body_str] << current_cutscene
    end
    
    current_cutscene = $1
    current_body = []
  elsif current_cutscene
    # Ignore "end" if it's the only thing on the line and closes the cutscene
    # But checking for general "end" at indentation level might be tricky.
    # We'll just collect everything.
    current_body << line
  end
end

# Store the last one
if current_cutscene
  body_str = current_body.join("\n").strip
  cutscenes[body_str] ||= []
  cutscenes[body_str] << current_cutscene
end

puts "Checking for duplicate cutscene bodies..."
found_duplicates = false

cutscenes.each do |body, names|
  if names.length > 1
    # Filter out very short bodies (empty or 1-2 lines) which might be common/placeholders
    next if body.length < 50 
    
    puts "\nDuplicate Content Found:"
    puts "Cutscenes: #{names.join(', ')}"
    puts "Content snippet: #{body[0..100]}..."
    found_duplicates = true
  end
end

puts "\nNo significant duplicates found." if !found_duplicates
