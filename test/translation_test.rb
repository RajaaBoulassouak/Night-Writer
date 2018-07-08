require 'minitest/autorun'
require 'minitest/pride'
require './lib/translation'
require 'pry'

class TranslationTest < Minitest::Test

  def test_it_exists
    translation = Translation.new

    assert_instance_of Translation, translation
  end

  def test_letter_returns_array

    translation = Translation.new

    assert_equal ["0.", "..", ".."], translation.english_to_braille["a"]
    assert_equal ["0.", ".0", "00"], translation.english_to_braille["z"]
  end

  def test_translate_text_to_braille
    translation = Translation.new

    assert_equal [["00", "..", "00"], ["00", ".0", "00"], ["0.", ".0", "00"]], translation.translate_text_to_braille("xyz")
    assert_equal [["00", "..", "00"]], translation.translate_text_to_braille("x")
  end

end
