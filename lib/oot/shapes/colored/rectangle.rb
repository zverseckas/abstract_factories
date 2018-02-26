# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'

module OOT::Shapes
  class ColoredRectangle < GenericRectangle
    attr_reader :color

    def initialize(width:, height:, options: {})
      super(width: width, height: height)
      @color = options[:color]
    end
  end
end
