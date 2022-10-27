
module CookingUnitConverter
  @@table_volumes = #Сколько миллилитров в какой-либо единице измерения
  {
    ml:         :milliliter,  # Как делать синонимы
    milliliter: 1.0,

    l:          :liter,
    liter:      1000.0,

    tbsp:       :tablespoon,
    tablespoon: 15.0, #Метрическая ложка

    tsp:        :teaspoon,
    teaspoon:   5.0,  #Метрическая ложка


    cup:        250.0, #Метрическая кружка
    
    cm3:        1.0,
    m3:         1_000_000.0,

    #Американский галлон
    gal:        :gallon,
    gallon:     3785.41,

    
    #Имперская пинта
    pt:         :pint,
    pint:       568.26125,
    #Американские пинты
    liquid_pint:473.176473,
    dry_pint: 550.610471,
  }
end