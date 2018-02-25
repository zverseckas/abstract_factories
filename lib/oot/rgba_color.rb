# frozen_string_literal: true

module OOT
  class RGBAColor
    RGB_RANGE = (0..255).freeze

    attr_reader :red, :green, :blue, :alpha

    def initialize(red: 0, green: 0, blue: 0, alpha: 1.0)
      @red = red.to_i
      @green = green.to_i
      @blue = blue.to_i
      @alpha = alpha.to_f

      validate!
    end

    private

    def validate!
      if alpha < 0 || alpha > 1
        raise ArgumentError, 'invalid alpha channel'
      end

      return if RGB_RANGE.include?(red) &&
                RGB_RANGE.include?(green) &&
                RGB_RANGE.include?(blue)

      raise ArgumentError, 'invalid red, green or blue'
    end
  end
end
