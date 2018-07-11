require './lib/be_translation'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class BETranslationTest < Minitest::Test
  
  def test_it_exists
    be_translation = BETranslation.new  
    
    assert_instance_of BETranslation, be_translation
  end 
  
  def test_it_returns_value
    be_translation = BETranslation.new
    
    assert_equal "t", be_translation.braille_to_english[[".0", "00", "0."]]
    assert_equal "j", be_translation.braille_to_english[[".0", "00", ".."]]
  end 
  
end 