require_relative '../lib/cooking_unit_converter'
include CookingUnitConverter;

puts "100 mills of water equals " + CookingUnitConverter::convert(100, :ml, :l).to_s() + " liters"

puts "100 mg of flour equals " + CookingUnitConverter::convert(100, :mg, :kg).to_s() + " kilograms"

puts "1 kg of flour equals " + CookingUnitConverter::convert(1, :kg, :g).to_s() + " grams"
puts "100 kg of flour equals " + CookingUnitConverter::convert(100, :kg, :g).to_s() + " grams"
puts "100 g of flour equals " + CookingUnitConverter::convert(100, :g, :kg).to_s() + " kilograms"

puts "100 oz of flour equals " + CookingUnitConverter::convert(100, :oz, :g).to_s() + " grams"

puts "100 lb of flour equals " + CookingUnitConverter::convert(100, :lb, :kg).to_s() + " kilograms"

puts "100 inch equals " + CookingUnitConverter::convert(100, :in, :mm).to_s() + " mm"

puts "100 degrees Celsius equals " + CookingUnitConverter::convert(100, :c, :k).to_s() + " K"

puts "One cup of flour equals " + CookingUnitConverter::convert(1, :cup, :g, :flour).to_s() + " grams"

puts "Ten eggs weight around " + CookingUnitConverter::convert(10, :amount, :g, :eggs).to_s() + " grams"

puts "One kilogram of water equals " + CookingUnitConverter::convert(1, :kg, :l, :water).to_s() + " liters"