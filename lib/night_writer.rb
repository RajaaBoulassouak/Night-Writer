require './lib/translation'

    handle = File.open(ARGV[0], "r")
    incoming_text = handle.read
    handle.close  
    
    
    translation = Translation.new
    translated_text = translation.translate_text_to_braille(incoming_text)
    
    braille_output = translation.format_braille_output(translated_text)
  

    writer = File.open(ARGV[1], "w")
    writer.write(braille_output)
    writer.close

    puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters"
    
    
    
    
    
