
module CookingUnitConverter
    class InvalidMeasure < StandardError; end
    class IsNotConvertable < StandardError; end
    class NoMaterialProvided < StandardError; end 
    def get_val_from_table(table, unit)
        tmp = table[unit]
        while tmp.is_a?(Symbol)
            tmp = table[tmp]
        end
        if (tmp != nil)
            tmp
        else
            throw InvalidMeasure
        end
    end
end
  