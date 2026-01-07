
# Script to scan for narration lines (non-dialogue messages)
file_path = "Data/Scripts/Story/Main_Story.rb"

narration_lines = []
dialogue_lines = []

File.foreach(file_path).with_index do |line, index|
  # Look for scene.message "..."
  if line =~ /^\s*scene\.message\s+"(.*)"/
    content = $1
    # Check if it starts with a speaker tag \bName\b:
    if content.match?(/^\\\\b.*\\\\b:/)
      dialogue_lines << {line: index + 1, content: content}
    else
      narration_lines << {line: index + 1, content: content}
    end
  end
end

puts "Scan complete."
puts "Total Message Lines: #{narration_lines.size + dialogue_lines.size}"
puts "Dialogue Lines (Keep): #{dialogue_lines.size}"
puts "Narration Lines (Convert): #{narration_lines.size}"
puts "\nSample Narration Lines found:"
narration_lines[0..10].each do |item|
  puts "Line #{item[:line]}: #{item[:content]}"
end
