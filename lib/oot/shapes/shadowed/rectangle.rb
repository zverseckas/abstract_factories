# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'

module OOT::Shapes
  class ShadowedRectangle < GenericRectangle
    attr_reader :shadow_color, :shadow_spread, :shadow_blur

    def initialize(width:, height:, shadow_color:, shadow_spread:, shadow_blur:)
      super(width: width, heigt: height)

      @shadow_color = shadow_color
      @shadow_spread = shadow_spread.to_i
      @shadow_blur = shadow_blur.to_i

      validate_shadow!
    end

    def validate_shadow!
      super
      return if shadow_spread > 0 && shadow_blur > 0
      raise ArgumentError, 'invalid shadow spread or blur'
    end
  end
end
