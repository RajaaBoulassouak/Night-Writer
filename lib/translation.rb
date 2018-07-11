require 'pry'

class Translation
  
  attr_reader :english_to_braille
  
  def initialize
    @english_to_braille = {
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
  
  def translate_text_to_braille(string)
    string.chars.map do |character|
      english_to_braille[character]
    end
  end
  
  def format_braille_output(translated_array)
    transposed_array = translated_array.transpose
    chunked_for_print = []
    until transposed_array.flatten.count == 0 do 
      chunked_for_print << transposed_array[0].slice!(0..39).join
      chunked_for_print << "\n"
      chunked_for_print << transposed_array[1].slice!(0..39).join
      chunked_for_print << "\n"
      chunked_for_print << transposed_array[2].slice!(0..39).join
      chunked_for_print << "\n\n"
    end 
    chunked_for_print.join
  end
end

