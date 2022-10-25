# frozen_string_literal: true

require_relative "cooking_unit_converter/version"
require_relative "cooking_unit_converter/convertors/volume"
require_relative "cooking_unit_converter/convertors/weight"
require_relative "cooking_unit_converter/convertors/length"
require_relative "cooking_unit_converter/convertors/temperature"
require_relative "cooking_unit_converter/convertors/materials"

module CookingUnitConverter
    def convert(val, input_unit, output_unit, material = nil)
        if (temperature_unit? input_unit) && (temperature_unit? output_unit)
            return convert_temperature(val, input_unit, output_unit)
        end
        if (length_unit? input_unit) && (length_unit? output_unit)
            return convert_length(val, input_unit, output_unit)
        end
        if (volume_unit? input_unit) && (volume_unit? output_unit)
            return convert_volume(val, input_unit, output_unit)
        end
        if (weight_unit? input_unit) && (weight_unit? output_unit)
            return convert_weight(val, input_unit, output_unit)
        end

        if (material == nil)
            throw NoMaterialProvided;
        end
        if (weight_unit? input_unit) && (volume_unit? output_unit)
            if (tmp = try_convert_weight_to_volume(val, input_unit, output_unit, material)) != nil
                return tmp
            end
        end
        if (volume_unit? input_unit) && (weight_unit? output_unit)
            if (tmp = try_convert_volume_to_weight(val, input_unit, output_unit, material)) != nil
                return tmp
            end
        end
        if (weight_unit? input_unit) && (amount_unit? output_unit)
            if (tmp = try_convert_weight_to_count(val, input_unit, output_unit, material)) != nil
                return tmp
            end
        end
        if (amount_unit? input_unit) && (weight_unit? output_unit)
            if (tmp = try_convert_count_to_weight(val, input_unit, output_unit, material)) != nil
                return tmp
            end
        end
        throw IsNotConvertable;
    end
end
