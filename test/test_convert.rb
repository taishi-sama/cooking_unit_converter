require "./test/helper_for_tests"
#require "cooking_unit_converter/convertors/measure_helper"

class TestCookingUnitConverterConvert < Minitest::Test
  include CookingUnitConverter
  @@eps = 1e-5
  def test_same_measure_length
    assert_in_delta convert(1,:cm, :cm), 1, @@eps
  end
  def test_same_measure1_length
    assert_in_delta convert(23,:m, :m), 23, @@eps
  end
  def test_same_measure2_length
    assert_in_delta convert(3,:mm, :mm), 3, @@eps
  end
  def test_same_measure3_length
    assert_in_delta convert(15,:km, :km), 15, @@eps
  end
  def test_same_measure4_length
    assert_in_delta convert(254,:ft, :ft), 254, @@eps
  end
  def test_same_measure5_length
    assert_in_delta convert(21,:in, :in), 21, @@eps
  end
  def test_same_measure_temperature_1
    assert_in_delta convert(1,:k, :k), 1, @@eps
  end
  def test_same_measure_temperature_2
    assert_in_delta convert(1,:c, :c), 1, @@eps
  end
  def test_same_measure_temperature_3
    assert_in_delta convert(1,:f, :f), 1, @@eps
  end
  def test_same_measure_volume
    assert_in_delta convert(100, :l, :l), 100, @@eps
  end
  def test_same_measure1_volume
    assert_in_delta convert(234,:tablespoon,:tablespoon), 234 , @@eps
  end
  def test_same_measure2_volume
    assert_in_delta convert(35,:teaspoon,:teaspoon), 35 , @@eps
  end
  def test_same_measure3_volume
    assert_in_delta convert(24,:ml,:ml), 24 , @@eps
  end
  def test_same_measure4_volume
    assert_in_delta convert(4,:cup,:cup), 4 , @@eps
  end
  def test_same_measure5_volume
    assert_in_delta convert(0.2,:cm3,:cm3), 0.2 , @@eps
  end
  def test_same_measure6_volume
    assert_in_delta convert(0.2,:m3,:m3), 0.2 , @@eps
  end
  def test_same_measure_weight
    assert_in_delta convert(100, :g, :g), 100, @@eps
  end
  def test_same_measure1_weight
    assert_in_delta convert(2, :oz, :oz), 2, @@eps
  end
  def test_same_measure2_weight
    assert_in_delta convert(4, :kg, :kg), 4, @@eps
  end
  def test_same_measure3_weight
    assert_in_delta convert(5, :lb, :lb), 5, @@eps
  end
  def test_same_measure4_weight
    assert_in_delta convert(67, :mg, :mg), 67, @@eps
  end
  def test_weigth_to_volume1
    assert_in_delta convert(250*0.65, :g, :cup, :flour), 1, @@eps
  end
  def test_volume_to_weigth1
    assert_in_delta convert(1, :cup, :g, :flour), 250*0.65, @@eps
  end
  def test_amount_to_weight1
    assert_in_delta convert(10, :amount, :g, :eggs), 60.0 * 10, @@eps
  end
  def test_weigth_to_amount1
    assert_in_delta convert(60, :g, :amount , :eggs), 1, @@eps
  end
end