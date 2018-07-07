require 'minitest/autorun'
require 'minitest/pride'
require './lib/translation'
require 'pry'

class TranslationTest
  def test_it_exists
    translation = Translation.new

    assert_instance_of Translation, translation
  end

  def test_letter_returns_array
    translation = Translation.new

    assert_equal ["0.", "..", ".."], @english_to_braille["a"]
    assert_equal ["0.", ".0", "00"], @english_to_braille["z"]
  end

end
