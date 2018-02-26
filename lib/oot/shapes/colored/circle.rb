# frozen_string_literal: true

require 'oot/shapes/generic/circle'

module OOT::Shapes
  class ColoredCircle < GenericCircle
    attr_reader :color

    def initialize(radius:, options: {})
      super(radius: radius)
      @color = options[:color]
    end
  end
end
