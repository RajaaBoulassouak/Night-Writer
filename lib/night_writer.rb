require './lib/translation'

    handle = File.open(ARGV[0], "r")
    incoming_text = handle.read
    handle.close  
    
    translation = Translation.new
    sliced_text = translation.slice_text(incoming_text)
    require "pry"; binding.pry
    translate = translation.translate_text_to_braille(sliced_text)
    # require "pry"; binding.pryin

    writer = File.open(ARGV[1], "w")
    writer.write(translate)
    writer.close

    puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters"
