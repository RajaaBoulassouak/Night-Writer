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
  
  def slice_text(text)
  sliced_text = []
  ((text.length / 80) +1).times do
    sliced_text << text.slice!(0..79)
    end
  end
  
  def translate_text_to_braille(string)
    # require "pry"; binding.pry
    
      string.chars.map do |character|
        english_to_braille[character]
    end
    # braille_characters.transpose#.each_slice(80).with_index
  end
  

  # def translate_text_to_braille(string)
  #   string.chars.map do |character|
  #     english_to_braille[character]
  #   end
  #   # braille_characters.transpose#.each_slice(80).with_index
  # end


end

# translation = Translation.new
# p translation.translate_text_to_braille("wonderful")
