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
        rice: {g_per_cm3: 0.9},
        cream: {g_per_cm3: 0.998},
        butter: {g_per_cm3: 0.911},
        baking_powder: {g_per_cm3: 0.72},
        cocoa: :cocoa_powder,
        cocoa_powder: {g_per_cm3: 0.65},
        gelatin: {g_per_cm3: 1.3},
        condensed_milk: {g_per_cm3: 1.28},
        pasta: :macaroni,
        macaroni: {g_per_cm3: 0.26},
        soda: {g_per_cm3:2.2},
        starch: {g_per_cm3: 1.5}



    }
  end