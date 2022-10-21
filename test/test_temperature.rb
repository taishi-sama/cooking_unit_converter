require "./test/helper_for_tests"

class TestCookingUnitConverter < Minitest::Test
    include CookingUnitConverter
    @@eps = 1e-5
    def test_same_measure_t_1
        assert_in_delta convert_temperature(1,:k, :k), 1, @@eps
    end
    def test_same_measure_t_2
        assert_in_delta convert_temperature(1,:c, :c), 1, @@eps
    end
    def test_same_measure_t_3
        assert_in_delta convert_temperature(1,:f, :f), 1, @@eps
    end
end