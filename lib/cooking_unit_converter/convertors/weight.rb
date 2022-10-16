require_relative '../constants/weight'
require_relative './measure_helper'

module CookingUnitConverter
    def weight_unit?(unit)
        @@table_weights.has_key? unit
    end
    def to_g(val, unit)
        if weight_unit?(unit)
            val.to_f() * get_val_from_table(@@table_weights, unit)
        else
            throw InvalidMeasure;
        end
    end
    def from_g(val, unit)
        if weight_unit?(unit)
            val.to_f() / get_val_from_table(@@table_weights, unit)
        else
            throw InvalidMeasure;
        end
    end
    def convert_weight(val, input_unit, output_unit)
        from_g(to_g(val, input_unit), output_unit)
    end
end