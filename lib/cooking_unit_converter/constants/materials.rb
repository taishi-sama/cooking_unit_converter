module CookingUnitConverter
    @@table_materials = #Таблица материалов
    {
        flour: {g_per_cm3: 0.65 },
        water: {g_per_cm3: 1.0  },
        sunflower_oil: {g_per_cm3: 0.92},
        egg: :eggs,
        eggs: {g_per_amount: 60.0 },
        sugar: {g_per_cm3: 0.87},
        powdered_sugar: :sugar_powder,
        sugar_powder: {g_per_cm3: 0.8},
        milk: {g_per_cm3: 1.027},
        salt: {g_per_cm3: 2.165},
        honey: {g_per_cm3: 1.45},
        rice: {g_per_cm3: 0.9}



    }
  end