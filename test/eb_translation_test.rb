require 'minitest/autorun'
require 'minitest/pride'
require './lib/eb_translation'
require 'pry'

class EBTranslationTest < Minitest::Test

  def test_it_exists
    eb_translation = EBTranslation.new

    assert_instance_of EBTranslation, eb_translation
  end

  def test_letter_returns_array
    eb_translation = EBTranslation.new

    assert_equal ["0.", "..", ".."], eb_translation.english_to_braille["a"]
    assert_equal ["0.", ".0", "00"], eb_translation.english_to_braille["z"]
  end

  def test_translate_text_to_braille
    eb_translation = EBTranslation.new

    assert_equal [["0.", "..", ".."], ["0.", "0.", ".."]], eb_translation.translate_text_to_braille("ab")
    
    assert_equal [["00", "..", "00"]], eb_translation.translate_text_to_braille("x")
  end
  
  def test_format_braille_output
    eb_translation = EBTranslation.new
    
    assert_equal "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n................................................................................\n................................................................................\n\n0.0.\n....\n....\n\n", eb_translation.format_braille_output([["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."], ["0.", "..", ".."]])
  end

end
