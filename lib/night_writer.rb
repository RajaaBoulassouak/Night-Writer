require './lib/eb_translation'

    handle = File.open(ARGV[0], "r")
    incoming_text = handle.read
    handle.close
    
    
    eb_translation = EBTranslation.new
    translated_text = eb_translation.translate_text_to_braille(incoming_text)
    braille_output = eb_translation.format_braille_output(translated_text)
  

    writer = File.open(ARGV[1], "w")
    writer.write(braille_output)
    writer.close

    puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters"
    
    
    
    
    
