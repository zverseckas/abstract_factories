# frozen_string_literal: true

require 'oot/shapes/abstract'

module OOT::Shapes
  class GenericRectangle < AbstractShape
    attr_accessor :width, :height

    def initialize(width:, height:)
      @width = width
      @height = height

      validate!
    end

    def area
      width * height
    end

    def perimeter
      2 * (width + height)
    end

    def diagonal
      Math.sqrt(width**2 + height**2)
    end

    def validate!
      return if width > 0 && height > 0
      raise ArgumentError, 'invalid dimensions'
    end
  end
end
