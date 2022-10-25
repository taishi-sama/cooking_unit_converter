module CookingUnitConverter
    @@table_materials = #Таблица материалов
    {
        flour: {g_per_cm3: 0.65 },
        water: {g_per_cm3: 1.0  },
        sunflower_oil: {g_per_cm3: 0.92},
        egg: :eggs,
        eggs: {g_per_amount: 60.0 }
    }
  end