require "../lib/cooking_unit_converter"
#include CookingUnitConverter;
puts "100 mills of water equals " + CookingUnitConverter::convert_volume(100, :ml, :l).to_s() + " liters"