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
  def test_same_measure7_volume
    assert_in_delta convert(1,:cup,:tsp), 250/5.0 , @@eps
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
  def test_same_measure5_weight
    assert_in_delta convert(500, :g, :mg), 500*1000, @@eps
  end
  def test_same_measure6_weight
    assert_in_delta convert(6, :lb, :oz), 6*453.6/28.35, @@eps
  end
  def test_weight_to_volume1
    assert_in_delta convert(250*0.65, :g, :cup, :flour), 1, @@eps
  end
  def test_weight_to_volume2
    assert_in_delta convert(250*2.165, :g, :cup, :salt), 1, @@eps
  end
  def test_weight_to_volume3
    assert_in_delta convert(250*0.87, :g, :cup, :sugar), 1, @@eps
  end
  def test_weight_to_volume4
    assert_in_delta convert(250*0.911, :g,:cup,:butter),1, @@eps
  end

  def test_weight_to_volume5
    assert_in_delta convert(15*0.998, :g,:tablespoon,:cream),1, @@eps
  end
  def test_weight_to_volume6
    assert_in_delta convert(12, :g,:tsp,:baking_powder),12/0.72/5, @@eps
  end
  def test_weight_to_volume7
    assert_in_delta convert( 0.5,:pound, :ml,:gelatin),0.5*453.6/1.3, @@eps
  end
  def test_weight_to_volume8
    assert_in_delta convert( 100,:mg, :cm3,:cocoa_powder),100*0.001/0.65, @@eps
  end
  def test_weight_to_volume9
    assert_in_delta convert( 250*0.26,:g, :cup,:pasta), 1, @@eps
  end
  def test_weight_to_volume10
    assert_in_delta convert( 40,:g, :tsp,:soda),40/5/2.2, @@eps
  end
  def test_weight_to_volume11
    assert_in_delta convert( 40,:lb, :tbsp,:starch),40*453.6/1.5/15, @@eps
  end
  def test_volume_to_weight1
    assert_in_delta convert(1, :cup, :g, :flour), 250*0.65, @@eps
  end
  def test_volume_to_weight2
    assert_in_delta convert(1, :cup, :g, :salt), 250*2.165, @@eps
  end
  def test_volume_to_weight3
    assert_in_delta convert(3, :cup, :g, :sugar), 3*250*0.87, @@eps
  end
  def test_volume_to_weight4
    assert_in_delta convert(0.5, :cup, :oz, :honey), 0.5*250*1.45/28.35, @@eps
  end
  def test_volume_to_weight5
    assert_in_delta convert(6, :tbsp, :g, :sugar_powder), 6*15*0.8, @@eps
  end
  def test_volume_to_weight6
    assert_in_delta convert(1,:cup, :g,:cream), 1*0.998*250, @@eps
  end
  def test_volume_to_weight7
    assert_in_delta convert(3,:tbsp, :g,:butter), 3*15*0.911, @@eps
  end
  def test_volume_to_weight8
    assert_in_delta convert(3,:l, :kg,:condensed_milk), 3*1.28, @@eps
  end

  def test_volume_to_weight9
    assert_in_delta convert(1,:cup, :g,:starch), 1*1.5*250, @@eps
  end
  def test_volume_to_weight10
    assert_in_delta convert(40,:tbsp, :g,:soda), 40*15*2.2, @@eps
  end
  def test_volume_to_weight11
    assert_in_delta convert(2,:cup, :oz,:pasta), 2*250*0.26/28.35 , @@eps
  end
  def test_amount_to_weight1
    assert_in_delta convert(10, :amount, :g, :eggs), 60.0 * 10, @@eps
  end
  def test_weight_to_amount1
    assert_in_delta convert(60, :g, :amount , :eggs), 1, @@eps
  end


end