# require './lib/be_translation'

    handle = File.open(ARGV[0], "r")
    braille_input = handle.read.lines
    handle.close
    
    
    # eb_translation = EBTranslation.new
    # translated_text = eb_translation.translate_text_to_braille(incoming_text)
    # braille_output = eb_translation.format_braille_output(translated_text)
  

    writer = File.open(ARGV[1], "w")
    writer.write(braille_input)
    writer.close

    puts "Created '#{ARGV[1]}' containing #{braille_input.length} characters"
    
    