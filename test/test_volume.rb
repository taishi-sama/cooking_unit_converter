require "./test/helper_for_tests"
#require "cooking_unit_converter/convertors/measure_helper"

class TestCookingUnitConverterVolume < Minitest::Test
    include CookingUnitConverter
    @@eps = 1e-5
    def test_same_measure
        assert_in_delta convert_volume(100, :l, :l), 100, @@eps
    end
    def test_same_measure1
        assert_in_delta convert_volume(234,:tablespoon,:tablespoon), 234 , @@eps
    end
    def test_same_measure2
        assert_in_delta convert_volume(35,:teaspoon,:teaspoon), 35 , @@eps
    end
    def test_same_measure3
        assert_in_delta convert_volume(24,:ml,:ml), 24 , @@eps
    end
    def test_same_measure4
        assert_in_delta convert_volume(4,:cup,:cup), 4 , @@eps
    end
    def test_same_measure5
        assert_in_delta convert_volume(0.2,:cm3,:cm3), 0.2 , @@eps
    end
    def test_same_measure6
        assert_in_delta convert_volume(0.2,:m3,:m3), 0.2 , @@eps
    end
    def test_fractionalml1
        assert_in_delta convert_volume(500, :ml, :l), 0.5, @@eps
    end
    def test_fractionalml2
        assert_in_delta convert_volume(2341, :ml, :teaspoon), 585.25, @@eps
    end
    def test_fractionalml3
        assert_in_delta convert_volume(910, :ml, :tablespoon), 65, @@eps
    end
    def test_fractionalml4
        assert_in_delta convert_volume(910, :ml, :cup), 3.64, @@eps
    end
    def test_fractionalml5
        assert_in_delta convert_volume(93, :ml, :cm3), 93, @@eps
    end
    def test_fractionalml6
        assert_in_delta convert_volume(580, :ml, :m3), 0.00058, @@eps
    end
    def test_fractionalc1
        assert_in_delta convert_volume(2, :cup, :ml), 500, @@eps
    end
    def test_fractionalc2
        assert_in_delta convert_volume(1.4, :cup, :tablespoon), 25, @@eps
    end
    def test_fractionalc3
        assert_in_delta convert_volume(0.96, :cup, :teaspoon), 60, @@eps
    end
    def test_fractionalc4
        assert_in_delta convert_volume(2, :cup, :cm3), 500, @@eps
    end
    def test_fractionalc5
        assert_in_delta convert_volume(3, :cup, :l), 0.750, @@eps
    end
    def test_fractionalc6
        assert_in_delta convert_volume(4, :cup, :m3), 0.001, @@eps
    end
    def test_fractionaltbs1
        assert_in_delta convert_volume(10, :tablespoon, :ml), 140, @@eps
    end
    def test_fractionaltbs2
        assert_in_delta convert_volume(10, :tablespoon, :l), 0.140, @@eps
    end
    def test_fractionaltbs3
        assert_in_delta convert_volume(8, :tablespoon, :teaspoon), 28, @@eps
    end
    def test_fractionaltbs4
        assert_in_delta convert_volume(125, :tablespoon, :cup), 7, @@eps
    end
    def test_fractionaltbs5
        assert_in_delta convert_volume(10, :tablespoon, :cm3), 140, @@eps
    end
    def test_fractionaltbs6
        assert_in_delta convert_volume(10, :tablespoon, :m3), 0.000140, @@eps
    end
    def test_fractionalm21
        assert_in_delta convert_volume(1, :m3, :ml), 1000000, @@eps
    end
    def test_fractionalm22
        assert_in_delta convert_volume(1, :m3, :l), 1000, @@eps
    end
    def test_fractionalm23
        assert_in_delta convert_volume(3, :m3, :cm3), 3000000, @@eps
    end
    def test_fractionalm24
        assert_in_delta convert_volume(0.0032, :m3, :teaspoon), 800, @@eps
    end
    def test_fractionalm25
        assert_in_delta convert_volume(0.0112, :m3, :tablespoon), 800, @@eps
    end
    def test_fractionalm26
        assert_in_delta convert_volume(0.03125, :m3, :cup), 125, @@eps
    end
    def test_fractionaltes1
        assert_in_delta convert_volume(312.5, :teaspoon, :cup), 5, @@eps
    end
    def test_fractionaltes2
        assert_in_delta convert_volume(21, :teaspoon, :tablespoon), 6, @@eps
    end
    def test_fractionaltes3
        assert_in_delta convert_volume(2, :teaspoon, :ml), 8, @@eps
    end
    def test_fractionaltes4
        assert_in_delta convert_volume(100, :teaspoon, :l), 0.4, @@eps
    end
    def test_fractionaltes5
        assert_in_delta convert_volume(200, :teaspoon, :cm3), 800, @@eps
    end
    def test_fractionaltes6
        assert_in_delta convert_volume(250, :teaspoon, :m3), 0.001, @@eps
    end
    def test_fractionall1
        assert_in_delta convert_volume(2, :l, :ml), 2000, @@eps
    end
    def test_fractionall2
        assert_in_delta convert_volume(1, :l, :cup), 4, @@eps
    end
    def test_fractionall3
        assert_in_delta convert_volume(0.084, :l, :tablespoon), 6, @@eps
    end
    def test_fractionall4
        assert_in_delta convert_volume(0.08, :l, :teaspoon), 20, @@eps
    end
    def test_fractionall5
        assert_in_delta convert_volume(0.5, :l, :cm3), 500, @@eps
    end
    def test_fractionall6
        assert_in_delta convert_volume(0.5, :l, :m3), 0.0005, @@eps
    end
    def test_fractionalcm1
        assert_in_delta convert_volume(5, :cm3, :ml), 5, @@eps
    end
    def test_fractionalcm2
        assert_in_delta convert_volume(250, :cm3, :l), 0.25, @@eps
    end
    def test_fractionalcm3
        assert_in_delta convert_volume(250, :cm3, :cup), 1, @@eps
    end
    def test_fractionalcm4
        assert_in_delta convert_volume(28, :cm3, :tablespoon), 2, @@eps
    end
    def test_fractionalcm5
        assert_in_delta convert_volume(16, :cm3, :teaspoon), 4, @@eps
    end
    def test_fractionalcm6
        assert_in_delta convert_volume(1340, :cm3, :m3), 0.00134, @@eps
    end
end