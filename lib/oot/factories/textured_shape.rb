# frozen_string_literal: true

require 'oot/factories/abstract'

require 'oot/shapes/textured/circle'
require 'oot/shapes/textured/rectangle'

module OOT::Factories
  class TexturedShape < Abstract
    def build_circle(radius:, texture:)
      OOT::Shapes::TexturedCircle.new(
        radius: radius,
        texture: texture
      )
    end

    def build_rectangle(width:, height:, texture:)
      OOT::Shapes::TexturedRectangle.new(
        width: width,
        height: height,
        texture: texture
      )
    end
  end
end
