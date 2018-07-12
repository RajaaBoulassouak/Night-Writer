require './lib/be_translation'

    handle = File.open(ARGV[0], "r")
    braille_text = handle.readlines
    handle.close
    
    
    be_translation = BETranslation.new
    line_output = be_translation.remove_line_break(braille_text)
    strings_breaking = be_translation.break_strings(line_output)
    single_string = be_translation.make_single_string(strings_breaking)
    strings_of_six = be_translation.split_into_sextets(single_string)
    english_output = be_translation.translate_to_english(strings_of_six)
  

    writer = File.open(ARGV[1], "w")
    writer.write(english_output)
    writer.close

    puts "Created '#{ARGV[1]}' containing #{braille_text.length} characters"