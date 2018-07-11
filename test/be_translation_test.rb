require './lib/night_reader'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class NightReaderTest
  
  def test_it_exists
    night_reader = NightReader.new  
    
    assert_instance_of NightReader, night_reader
  end 
  
  def test_it_returns_value
    night_reader = NightReader.new
    
    assert_equal "t", night_reader.braille_to_english[".0", "00", "0."]
    assert_equal "j", night_reader.braille_to_english[".0", "00", ".."]
  end 
  
end 