
# Script to convert narration lines to comments in Main_Story.rb
file_path = "Data/Scripts/Story/Main_Story.rb"
temp_path = "Data/Scripts/Story/Main_Story_New.rb"

dialogue_count = 0
narration_count = 0

File.open(temp_path, "w") do |out_file|
  File.foreach(file_path) do |line|
    original_line = line.dup
    
    # Check if line matches scene.message "..."
    if line =~ /^(\s*)scene\.message\s+"(.*)"/
      indent = $1
      content = $2
      
      # Check if it looks like dialogue (has speaker tag \bName\b:)
      if content.match?(/^\\\\b.*\\\\b:/)
        # Keep as is
        out_file.puts line
        dialogue_count += 1
      else
        # Convert to comment: # Content
        out_file.puts "#{indent}# #{content}"
        narration_count += 1
      end
    else
      # Not a message line, keep as is
      out_file.puts line
    end
  end
end

puts "Conversion complete."
puts "Kept #{dialogue_count} dialogue lines."
puts "Converted #{narration_count} narration lines to comments."
puts "New file written to #{temp_path}"
