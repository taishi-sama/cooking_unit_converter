require_relative '../constants/length'
require_relative './measure_helper'

module CookingUnitConverter
    def length_unit?(unit)
        @@table_lengths.has_key? unit
    end

    def to_cm(val, unit)
        if length_unit?(unit)
            val.to_f() * get_val_from_table(@@table_lengths, unit)
        else
            throw InvalidMeasure;
        end
    end

    def from_cm(val, unit)
        if length_unit?(unit)
            val.to_f() / get_val_from_table(@@table_lengths, unit)
        else
            throw InvalidMeasure;
        end
    end

    def convert_length(val, input_unit, output_unit)
        from_cm(to_cm(val, input_unit), output_unit)
    end
end