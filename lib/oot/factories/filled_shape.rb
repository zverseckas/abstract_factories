# frozen_string_literal: true

require 'oot/factories/abstract'

require 'oot/shapes/filled/circle'
require 'oot/shapes/filled/rectangle'

module OOT::Factories
  class FilledShape < Abstract
    def build_circle(radius:, fill:)
      OOT::Shapes::FilledCircle.new(
        radius: radius,
        fill: fill
      )
    end

    def build_rectangle(width:, height:, fill:)
      OOT::Shapes::FilledRectangle.new(
        width: width,
        height: height,
        fill: fill
      )
    end
  end
end
