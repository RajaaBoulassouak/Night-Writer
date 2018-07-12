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
    
    assert_equal "t", be_translation.braille_to_english[".0000."]
    assert_equal "j", be_translation.braille_to_english[".000.."]
  end 
  
  def test_it_removes_line_breaks 
    be_translation = BETranslation.new 
    
    assert_equal ["hello world"], be_translation.remove_line_break(["hello world\n"])
  end
  
  def test_it_breaks_strings
    be_translation = BETranslation.new
    
    assert_equal [["a", "a", "a"], ["b", "b", "b"]], be_translation.break_strings(["aaa", "bbb"])
  end 
  
  def test_it_makes_single_string
    be_translation = BETranslation.new
    
    assert_equal "aabb", be_translation.make_single_string([["a", "b"], ["a", "b"]])
  end 
  
  def test_it_makes_sextets
    be_translation = BETranslation.new 
    
    assert_equal ["123456", "654321"], be_translation.split_into_sextets("123456654321")
  end 
  
  def test_it_translates_to_english
    be_translation = BETranslation.new 
    
    assert_equal "abe", be_translation.translate_to_english(["0.....", "0.0...", "0..0.."])
  end   
end 