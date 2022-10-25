
module CookingUnitConverter
  @@table_volumes = #Сколько миллилитров в какой-либо единице измерения
  {
    ml:         :milliliter,  # Как делать синонимы
    milliliter: 1.0,

    l:          :liter,
    liter:      1000.0,

    tablespoon: 14.0,
    teaspoon:   4.0,

    cup:        250.0,
    
    cm3:        1.0,
    m3:         1_000_000.0,
  }
end