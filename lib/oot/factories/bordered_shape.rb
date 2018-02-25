# frozen_string_literal: true

require 'oot/factories/abstract'

require 'oot/shapes/bordered/circle'
require 'oot/shapes/bordered/rectangle'

module OOT::Factories
  class BorderedShape < Abstract
    def build_circle(radius:, border_color:, border_width:)
      OOT::Shapes::BorderedCircle.new(
        radius: radius,
        border_color: border_color,
        border_width: border_width
      )
    end

    def build_rectangle(width:, height:, border_color:, border_width:)
      OOT::Shapes::BorderedRectangle.new(
        width: width,
        height: height,
        border_color: border_color,
        border_width: border_width
      )
    end
  end
end
