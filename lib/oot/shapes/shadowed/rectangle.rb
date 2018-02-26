# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'

module OOT::Shapes
  class ShadowedRectangle < GenericRectangle
    attr_accessor :shadow_color, :shadow_spread, :shadow_blur

    def initialize(width:, height:, options: {})
      super(width: width, height: height)

      @shadow_color = options[:shadow_color]
      @shadow_spread = options[:shadow_spread].to_i
      @shadow_blur = options[:shadow_blur].to_i

      validate_shadow!
    end

    def deep_clone
      copy = clone
      copy.shadow_color = @shadow_color.clone
      copy 
    end

    private

    def validate_shadow!
      return if shadow_spread > 0 && shadow_blur > 0
      raise ArgumentError, 'invalid shadow spread or blur'
    end
  end
end
