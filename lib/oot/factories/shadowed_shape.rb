# frozen_string_literal: true

require 'oot/factories/abstract'

require 'oot/shapes/shadowed/circle'
require 'oot/shapes/shadowed/rectangle'

module OOT::Factories
  class ShadowedShape < Abstract
    def build_circle(radius:, shadow_color:, shadow_spread:, shadow_blur:)
      OOT::Shapes::ShadowedCircle.new(
        radius: radius,
        shadow_color: shadow_color,
        shadow_spread: shadow_spread,
        shadow_blur: shadow_blur
      )
    end

    def build_rectangle(width:, height:, shadow_color:, shadow_spread:, shadow_blur:)
      OOT::Shapes::ShadowedRectangle.new(
        width: width,
        height: height,
        shadow_color: shadow_color,
        shadow_spread: shadow_spread,
        shadow_blur: shadow_blur
      )
    end
  end
end
