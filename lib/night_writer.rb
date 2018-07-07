handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close

writer =File.open(ARGV[1], "w")
writer.write(incoming_text)
writer.close

puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters"
