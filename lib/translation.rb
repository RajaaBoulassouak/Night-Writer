require 'pry'

class Translation
attr_reader :english_to_braille
  def initialize
    @english_to_braille ={
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["0.", "..", ".."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      " " => ["..", "..", ".."]
    }
  end
  
  # def slice_text(incoming_text)
  # sliced_text = []
  # ((incoming_text.length / 80) +1).times do
  #   sliced_text << incoming_text.slice!(0..79)
  #   end
  #   return sliced_text
  #   binding.pry 
  # end
  # 
  # def translate_text_to_braille(incoming_text)
  #   passed_output = slice_text(incoming_text)
  #   passed_output.chars.map do |character|
  #     english_to_braille[character]
  #   end 
  # end 
  

  def translate_text_to_braille(string)
    string.chars.map do |character|
      english_to_braille[character]
    end
    # braille_characters.transpose#.each_slice(80).with_index
  end
  
  def format_braille_output(translated_array)
    # binding.pry 
    line_array = translated_array.transpose
    line_one = line_array[0].join
    line_two = line_array[1].join
    line_three = line_array[2].join
    "#{line_one[0, 79]}\n""#{line_two[0, 79]}\n""#{line_three[0, 79]}\n\n""#{line_one[80, 159]}\n""#{line_two[80, 159]}\n""#{line_three[80, 159]}\n\n""#{line_one[160, 239]}\n""#{line_two[160, 239]}\n""#{line_three[160, 239]}\n\n""#{line_one[240, 319]}\n""#{line_two[240, 319]}\n""#{line_three[240, 319]}"
  end


end

translation = Translation.new
# p translation.translate_text_to_braille("xx")
# p translation.translate_text_to_braille("xx").transpose
p translation.format_braille_output([["00", "..", "00"], ["00", "..", "00"]])
