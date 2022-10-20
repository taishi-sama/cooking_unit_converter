require "./test/helper_for_tests"
#require "cooking_unit_converter/convertors/measure_helper"

class TestCookingUnitConverter < Minitest::Test
  include CookingUnitConverter
  @@eps = 1e-5
  def test_same_measure
    assert_in_delta convert_weight(100, :g, :g), 100, @@eps
  end
  def test_same_measure1
    assert_in_delta convert_weight(2, :oz, :oz), 2, @@eps
  end
  def test_same_measure2
    assert_in_delta convert_weight(4, :kg, :kg), 4, @@eps
  end
  def test_same_measure3
    assert_in_delta convert_weight(5, :lb, :lb), 5, @@eps
  end
  def test_same_measure4
    assert_in_delta convert_weight(67, :mg, :mg), 67, @@eps
  end
  def test_fractionalg1
    assert_in_delta convert_weight(500, :g, :kg), 0.5, @@eps
  end
  def test_fractionalg2
    assert_in_delta convert_weight(283.5, :g, :oz), 10, @@eps
  end
  def test_fractionalg3
    assert_in_delta convert_weight(1, :g, :mg), 1000, @@eps
  end
  def test_fractionalg4
    assert_in_delta convert_weight(9072, :g, :lb), 20, @@eps
  end
  def test_fractionalkg1
    assert_in_delta convert_weight(1000, :kg, :g), 1000000, @@eps
  end
  def test_fractionalkg2
    assert_in_delta convert_weight(0.70875, :kg, :oz), 25, @@eps
  end
  def test_fractionalkg3
    assert_in_delta convert_weight(1.3608, :kg, :lb), 3, @@eps
  end
  def test_fractionalkg4
    assert_in_delta convert_weight(1, :kg, :mg), 1000000, @@eps
  end
  def test_fractionaloz1
    assert_in_delta convert_weight(10, :oz, :g), 283.5, @@eps
  end
  def test_fractionaloz2
    assert_in_delta convert_weight(10, :oz, :kg), 0.2835, @@eps
  end
  def test_fractionaloz3
    assert_in_delta convert_weight(10, :oz, :mg), 283500, @@eps
  end
  def test_fractionaloz4
    assert_in_delta convert_weight(160, :oz, :lb), 10, @@eps
  end
  def test_fractionallb1
    assert_in_delta convert_weight(10, :lb, :g), 4536, @@eps
  end
  def test_fractionallb2
    assert_in_delta convert_weight(10, :lb, :kg), 4.536, @@eps
  end
  def test_fractionallb3
    assert_in_delta convert_weight(10, :lb, :mg), 4536000, @@eps
  end
  def test_fractionallb4
    assert_in_delta convert_weight(4, :lb, :oz), 64, @@eps
  end
  def test_fractionalmg1
    assert_in_delta convert_weight(4, :mg, :g), 0.004, @@eps
  end
  def test_fractionalmg2
    assert_in_delta convert_weight(4, :mg, :kg), 0.000004, @@eps
  end
  def test_fractionalmg3
    assert_in_delta convert_weight(1814400, :mg, :oz), 64, @@eps
  end
  def test_fractionalmg4
    assert_in_delta convert_weight(272160, :mg, :lb), 0.6, @@eps
  end
end
