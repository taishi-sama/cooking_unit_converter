require "./test/helper_for_tests"
#require "cooking_unit_converter/convertors/measure_helper"

class TestCookingUnitConverter < Minitest::Test
    include CookingUnitConverter
    @@eps = 1e-5
    def test_same_measure
        assert_in_delta convert_volume(100, :l, :l), 100, @@eps
    end
    def test_fractional
        assert_in_delta convert_volume(500, :ml, :l), 0.5, @@eps
    end
end