require_relative '../constants/temperature'
require_relative './measure_helper'

module CookingUnitConverter
    def temperature_unit?(unit)
        (@@table_temperatures_to_kelvins.has_key?(unit)) && (@@table_temperatures_from_kelvins.has_key?(unit))
    end

    def to_k(val, unit)
        if temperature_unit?(unit)
            get_val_from_table(@@table_temperatures_to_kelvins, unit).call(val.to_f())
        else
            throw InvalidMeasure;
        end
    end

    def from_k(val, unit)
        if temperature_unit?(unit)
            get_val_from_table(@@table_temperatures_from_kelvins, unit).call(val.to_f())
        else
            throw InvalidMeasure;
        end
    end

    def convert_temperature(val, input_unit, output_unit)
        from_k(to_k(val, input_unit), output_unit)
    end
end