require "./test/helper_for_tests"
#require "cooking_unit_converter/convertors/measure_helper"

class TestCookingUnitConverter < Minitest::Test
  include CookingUnitConverter
  @@eps = 1e-5
  def test_same_measure
    assert_in_delta convert_weight(100, :g, :g), 100, @@eps
  end
  def test_fractional
    assert_in_delta convert_weight(500, :g, :kg), 0.5, @@eps
  end
  def test_fractional1
    assert_in_delta convert_weight(1000, :kg, :g), 1000000, @@eps
  end
  def test_fractional2
    assert_in_delta convert_weight(10, :oz, :g), 283.5, @@eps
  end
end
