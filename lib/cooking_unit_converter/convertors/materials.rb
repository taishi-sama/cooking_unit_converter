require_relative '../constants/materials'
require_relative './measure_helper'
require_relative './volume'
require_relative './weight'

module CookingUnitConverter
    def amount_unit?(unit)
        return unit == :amount || unit == :count
    end
    def get_density(material)
        if (mat = get_val_from_table(@@table_materials, material)) != nil
            return mat[:g_per_cm3]
        end
        nil
    end
    def get_one_item_weight(material)
        if (mat = get_val_from_table(@@table_materials, material)) != nil
            return mat[:g_per_amount]
        end
        nil
    end
    def try_convert_weight_to_volume(val, input_unit, output_unit, material)
        if (d = get_density(material)) != nil
            g = to_g(val, input_unit)
            return convert_volume(g / d, :cm3, output_unit)
        end
        nil
    end
    def try_convert_volume_to_weight(val, input_unit, output_unit, material)
        if (d = get_density(material)) != nil
            g = convert_volume(val, input_unit, :cm3)
            return from_g(g * d, output_unit)
        end
        nil
    end
    def try_convert_count_to_weight(val, input_unit, output_unit, material)
        if (d = get_one_item_weight(material)) != nil
            return from_g(d*val, output_unit)
        end
        nil
    end
    def try_convert_weight_to_count(val, input_unit, output_unit, material)
        if (d = get_one_item_weight(material)) != nil
            return to_g(val, input_unit) / d
        end
        nil
    end
end