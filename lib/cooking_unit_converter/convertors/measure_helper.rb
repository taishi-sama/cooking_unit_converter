
module CookingUnitConverter
    class InvalidMeasure < StandardError; end
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
  