require "./test/helper_for_tests"
require "cooking_unit_converter/convertors/measure_helper"

class TestCookingUnitConverterMH < Minitest::Test
    include CookingUnitConverter
    @@test_hash = {
        value1:     10,
        value2:     :value1,
        value3:     :value2,
        value4:     :value1,
        value5:     20
    }

    def test_direct_call
        assert_equal(get_val_from_table(@@test_hash, :value1), 10)
    end
    def test_not_in_table
        assert_throws InvalidMeasure do
            get_val_from_table(@@test_hash, :value_none)
        end
    end
    
    def test_synonym_call
        assert_equal(get_val_from_table(@@test_hash, :value2), get_val_from_table(@@test_hash, :value1))
    end

    def test_multilayer_synonym_call
        assert_equal(get_val_from_table(@@test_hash, :value3), get_val_from_table(@@test_hash, :value1))
    end
end
