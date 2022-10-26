# CookingUnitConverter

This gem is bunch of converters to convert one units of measure to another.


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add cooking_unit_converter

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install cooking_unit_converter

## Usage

Main function is convert(amount, :input_measure, :output_measure, [optional] material)

| Category | Allowable measures |
| ------ | ------ |
| Length | :centimeter(:cm), :meter(:m), :kilometer(:km), :millimeter(:mm), :inch(:in), :foot(:ft) |
| Temperature | :kelvin(:k), :celsius(:c), :fahrenheit(:f)|
| Volume | :milliliter(:ml), :liter(:l), :tablespoon, :teaspoon, :cup, :cm3, :m3 |
| Weight | :gram(:g), :milligram(:mg), :kilogram(:kg), :pound(:lb), :ounce(:ounce) |
| Count  | :amount(:count) |
| Materials | :flour, :water, :sunflower_oil, :eggs(:egg), :salt, :sugar, :sugar_powder(:powdered_sugar), :rice, :milk, :honey |

Values in brackets are synonimes.

Converts any measure to another in same category.
Can convert volume to weight and vice versa for flour, water, sunflower_oil, salt, sugar, sugar_powder, rice, milk, honey
Can convert amount to average weight and vice versa for eggs.

See examples of usage in ./examples/*

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cooking_unit_converter.
