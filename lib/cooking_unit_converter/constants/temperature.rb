module CookingUnitConverter
    @@table_temperatures_to_kelvins = # Лямбда-выражения для перевода в Кельвины
    {
        k: :kelvins,
        kelvins: -> (x) {[x, 0].max},
        c: :celsius,
        celsius: -> (x)  {[x + 273.15, 0.0].max},
        f: :fahrenheit,
        fahrenheit: -> (x) {[(x + 459.67)*5.0/9.0, 0.0].max }
    }
    @@table_temperatures_from_kelvins = # Лямбда-выражения для перевода из Кельвинов
    {
        k: :kelvins,
        kelvins: -> (x) {[x, 0].max},
        c: :celsius,
        celsius: -> (x)  {[x - 273.15, -273.15].max},
        f: :fahrenheit,
        fahrenheit: -> (x) {[x*9.0/5.0 - 459.67, -459.67].max }
    }
end