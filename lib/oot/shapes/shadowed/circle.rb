# frozen_string_literal: true

require 'oot/shapes/generic/circle'

module OOT::Shapes
  class ShadowedCircle < GenericCircle
    attr_reader :shadow_color, :shadow_spread, :shadow_blur

    def initialize(radius:, shadow_color:, shadow_spread:, shadow_blur:)
      super(radius: radius)

      @shadow_color = shadow_color
      @shadow_spread = shadow_spread.to_i
      @shadow_blur = shadow_blur.to_i

      validate_shadow!
    end

    private

    def validate_shadow!
      return if shadow_spread > 0 && shadow_blur > 0
      raise ArgumentError, 'invalid shadow spread or blur'
    end
  end
end
