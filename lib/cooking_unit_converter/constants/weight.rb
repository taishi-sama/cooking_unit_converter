module CookingUnitConverter
  @@table_weights = #Сколько грамм в какой-либо единице измерения
    {
      g:        :gram,
      gram:      1.0,

      mg:        :milligram,
      milligram: 0.001,

      kg:        :kilogram,
      kilogram:  1000.0,

      lb:         :pound,
      pound:      453.6,

      oz:         :ounce,
      ounce:      28.35
    }
end