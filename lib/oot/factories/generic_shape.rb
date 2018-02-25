# frozen_string_literal: true

require 'oot/factories/abstract'

require 'oot/shapes/generic/circle'
require 'oot/shapes/generic/rectangle'

module OOT::Factories
  class GenericShape < Abstract
    def build_circle(radius:)
      OOT::Shapes::GenericCircle.new(
        radius: radius
      )
    end

    def build_rectangle(width:, height:)
      OOT::Shapes::GenericRectangle.new(
        width: width,
        height: height
      )
    end
  end
end
