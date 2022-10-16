require_relative '../lib/cooking_unit_converter'
include CookingUnitConverter;

puts "100 mills of water equals " + CookingUnitConverter::convert_volume(100, :ml, :l).to_s() + " liters"

puts "100 mg of flour equals " + CookingUnitConverter::convert_weight(100, :mg, :kg).to_s() + " kilograms"

puts "1 kg of flour equals " + CookingUnitConverter::convert_weight(1, :kg, :g).to_s() + " grams"
puts "100 kg of flour equals " + CookingUnitConverter::convert_weight(100, :kg, :g).to_s() + " grams"
puts "100 g of flour equals " + CookingUnitConverter::convert_weight(100, :g, :kg).to_s() + " kilograms"

puts "100 oz of flour equals " + CookingUnitConverter::convert_weight(100, :oz, :g).to_s() + " grams"

puts "100 lb of flour equals " + CookingUnitConverter::convert_weight(100, :lb, :kg).to_s() + " kilograms"