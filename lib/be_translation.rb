class BETranslation
  
  attr_reader   :braille_to_english
  
  def initialize
    @braille_to_english = {
      "0....." => "a",
      "0.0..." => "b",
      "00...." => "c",
      "00.0.." => "d",    
      "0..0.." => "e",
      "000..." => "f",
      "0000.." => "g",
      "0.00.." => "h",
      ".00..." => "i",
      ".000.." => "j",
      "0...0." => "k",
      "0.0.0." => "l",
      "00..0." => "m",
      "00.00." => "n",
      "0..00." => "o",
      "000.0." => "p",
      ".....0" => "q",
      "0.000." => "r",
      ".00.0." => "s",
      ".0000." => "t",
      "0...00" => "u",
      "0.0.00" => "v",
      ".000.0" => "w",
      "00..00" => "x",
      "00.000" => "y",
      "0..000" => "z",
      "......" => " "
    }
  end

  def remove_line_break(lines_array)
    lines_array.map! do |line|
      line.chomp
    end 
  end 
  
  def break_strings(strings_in_2D_arrays)
    strings_in_2D_arrays.map! do |inner_array|
      inner_array.chars
    end 
  end
  
  def make_single_string(regrouped_arrays)
    regrouped_arrays.transpose.join 
  end 
  
  def split_into_sextets(single_string)
    sixes = []
    while single_string.length > 0 do 
      sixes << single_string.slice!(0..5)
    end 
    return sixes 
  end
  
  def translate_to_english(sixes)
    sixes.map! do |six|
      @braille_to_english[six]
    end.join 
  end 
   
end  


