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
      "z" => ["0.", ".0", "00"]
    }
  end

  def translate_letter_to_braille(letter_1)
    @english_to_braille[letter_1]
  end

  def translate_letter_to_brailLe_in_3_rows(letter_2)
    pair_1 = []
    pair_2 = []
    pair_3 = []
    pair_1 << translate_letter_to_braille(letter_2)[0]
    pair_2 << translate_letter_to_braille(letter_2)[1]
    pair_3 << translate_letter_to_braille(letter_2)[2]

    return pair_1, pair_2, pair_3

  end

  def translate_word_to_brailLe_in_3_rows(word)
    pair_1 = []
    pair_2 = []
    pair_3 = []
    word.chars.map do |character|
      pair_1 << translate_letter_to_braille(character)[0]
      pair_2 << translate_letter_to_braille(character)[1]
      pair_3 << translate_letter_to_braille(character)[2]
    end
    return pair_1, pair_2, pair_3

  end



end
