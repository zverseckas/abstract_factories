# frozen_string_literal: true

require 'oot/shapes/generic/circle'

module OOT::Shapes
  class ShadowedCircle < GenericCircle
    attr_accessor :shadow_color, :shadow_spread, :shadow_blur

    def initialize(radius:, options: {})
      super(radius: radius)

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
