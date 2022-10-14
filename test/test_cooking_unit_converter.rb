# frozen_string_literal: true

require "./test/helper_for_tests"

class TestCookingUnitConverter < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CookingUnitConverter::VERSION
  end
end
