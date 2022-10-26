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

puts  "One tbsp of salt equals " + CookingUnitConverter::convert(1, :tablespoon, :g, :salt).to_s() + " g"

puts "One cup of salt equals " + CookingUnitConverter::convert(1, :cup, :kg, :salt).to_s() + " kg"

puts "One cup of salt equals " + CookingUnitConverter::convert(1, :cup, :g, :salt).to_s() + " g"

puts "One teaspoon of honey equals " + CookingUnitConverter::convert(1, :tsp, :g, :honey).to_s() + " g"

puts "One cup of rice equals " + CookingUnitConverter::convert(1, :cup, :g, :rice).to_s() + " g"

puts "200 grams of rice equals " + CookingUnitConverter::convert(200, :g, :tbsp, :rice).to_s() + " tbsp"

puts "200 grams of sugar powder equals " + CookingUnitConverter::convert(200, :g, :tsp, :powdered_sugar).to_s() + " tsp"

puts "1 gram of sugar powder equals " + CookingUnitConverter::convert(1, :g, :ml, :powdered_sugar).to_s() + " ml"

puts "1 cup of sugar powder equals " + CookingUnitConverter::convert(1, :cup, :g, :powdered_sugar).to_s() + " g"