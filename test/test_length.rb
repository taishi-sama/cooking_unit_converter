require "./test/helper_for_tests"
#require "cooking_unit_converter/convertors/measure_helper"

class TestCookingUnitConverterLength < Minitest::Test
  include CookingUnitConverter
  @@eps = 1e-5
  def test_same_measure
    assert_in_delta convert_length(1,:cm, :cm), 1, @@eps
  end
  def test_same_measure1
    assert_in_delta convert_length(23,:m, :m), 23, @@eps
  end
  def test_same_measure2
    assert_in_delta convert_length(3,:mm, :mm), 3, @@eps
  end
  def test_same_measure3
    assert_in_delta convert_length(15,:km, :km), 15, @@eps
  end
  def test_same_measure4
    assert_in_delta convert_length(254,:ft, :ft), 254, @@eps
  end
  def test_same_measure5
    assert_in_delta convert_length(21,:in, :in), 21, @@eps
  end

  def test_fractionalcm1
    assert_in_delta convert_length(100, :cm, :m), 1, @@eps
  end
  def test_fractionalcm2
    assert_in_delta convert_length(428, :cm, :km), 0.00428, @@eps
  end
  def test_fractionalcm3
    assert_in_delta convert_length(5.4, :cm, :mm), 54, @@eps
  end
  def test_fractionalcm4
    assert_in_delta convert_length(129.032, :cm, :in), 50.8, @@eps
  end
  def test_fractionalcm5
    assert_in_delta convert_length(915, :cm, :ft), 30, @@eps
  end
  def test_fractionalm1
    assert_in_delta convert_length(1, :m, :cm), 100, @@eps
  end
  def test_fractionalm2
    assert_in_delta convert_length(3, :m, :km), 0.003, @@eps
  end
  def test_fractionalm3
    assert_in_delta convert_length(0.002, :m, :mm), 2, @@eps
  end
  def test_fractionalm4
    assert_in_delta convert_length(0.0508, :m, :in), 2, @@eps
  end
  def test_fractionalm5
    assert_in_delta convert_length(2.745, :m, :ft), 9, @@eps
  end
  def test_fractionalkm1
    assert_in_delta convert_length(1, :km, :cm), 100000, @@eps
  end
  def test_fractionalkm2
    assert_in_delta convert_length(2, :km, :m), 2000, @@eps
  end
  def test_fractionalkm3
    assert_in_delta convert_length(4, :km, :mm), 4000000, @@eps
  end
  def test_fractionalkm4
    assert_in_delta convert_length(0.000127, :km, :in), 5, @@eps
  end
  def test_fractionalkm5
    assert_in_delta convert_length(0.00305, :km, :ft), 10, @@eps
  end
  def test_fractionalmm1
    assert_in_delta convert_length(12, :mm, :cm), 1.2, @@eps
  end
  def test_fractionalmm2
    assert_in_delta convert_length(14, :mm, :m), 0.014, @@eps
  end
  def test_fractionalmm3
    assert_in_delta convert_length(14, :mm, :km), 0.000014, @@eps
  end
  def test_fractionalmm4
    assert_in_delta convert_length(5.08, :mm, :in), 0.2, @@eps
  end
  def test_fractionalmm5
    assert_in_delta convert_length(244, :mm, :ft), 0.8, @@eps
  end
  def test_fractionalin1
    assert_in_delta convert_length(100, :in, :cm), 254, @@eps
  end
  def test_fractionalin2
    assert_in_delta convert_length(5, :in, :m), 0.127, @@eps
  end
  def test_fractionalin3
    assert_in_delta convert_length(5, :in, :km), 0.000127, @@eps
  end
  def test_fractionalin4
    assert_in_delta convert_length(0.005, :in, :mm), 0.127, @@eps
  end
  def test_fractionalin5
    assert_in_delta convert_length(1525, :in, :ft), 127, @@eps
  end
  def test_fractionalft1
    assert_in_delta convert_length(0.1, :ft, :cm), 3.05, @@eps
  end
  def test_fractionalft2
    assert_in_delta convert_length(2, :ft, :m), 0.61, @@eps
  end
  def test_fractionalft3
    assert_in_delta convert_length(2, :ft, :km), 0.00061, @@eps
  end
  def test_fractionalft4
    assert_in_delta convert_length(0.0004, :ft, :mm), 0.122, @@eps
  end
  def test_fractionalft5
    assert_in_delta convert_length(25.4, :ft, :in), 305, @@eps
  end
end