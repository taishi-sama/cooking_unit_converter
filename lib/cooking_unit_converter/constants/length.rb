module CookingUnitConverter
    @@table_lengths = #Сколько сантиметров в какой-либо единице измерения
    {
      cm:        :centimeter,
      centimeter:      1.0,

      m:          :meter,
      meter:      100,

      km:         :kilometer,
      kilometer:  100000,

      mm:         :millimeter,
      millimeter: 0.1,

      in:         :inch,
      inch:       2.54,

      ft:         :foot,
      foot:       30.5
    }
  end