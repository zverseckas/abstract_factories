# frozen_string_literal: true

require 'oot/shapes/abstract'

module OOT::Shapes
  class GenericCircle < AbstractShape
    attr_accessor :radius

    def initialize(radius:)
      @radius = radius
      validate!
    end

    def area
      radius**2 * Math::PI
    end

    def perimeter
      2 * radius * Math::PI
    end

    def diameter
      2 * radius
    end

    def validate!
      return if radius > 0
      raise ArgumentError, 'invalid radius'
    end
  end
end
