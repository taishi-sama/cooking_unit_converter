require_relative '../constants/volume'
require_relative './measure_helper'

module CookingUnitConverter
    #Единый общий способ проверять, что строковая постоянная является каким-либо допустимым 
    def volume_unit?(unit)
        @@table_volumes.has_key? unit
    end
    def to_ml(val, unit)
        if volume_unit?(unit)
            val.to_f() * get_val_from_table(@@table_volumes, unit)
        else 
            throw InvalidMeasure;
        end
    end
    def from_ml(val, unit)
        if volume_unit?(unit)
            val.to_f() / get_val_from_table(@@table_volumes, unit)
        else 
            throw InvalidMeasure;
        end
    end
    def convert_volume(val, input_unit, output_unit)
        from_ml(to_ml(val, input_unit), output_unit)
    end
end