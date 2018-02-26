# frozen_string_literal: true

require 'oot/shapes/generic/circle'
require 'oot/cloneable'

module OOT::Shapes
  class BorderedCircle < GenericCircle
    include OOT::Cloneable

    attr_accessor :border_color, :border_width

    def initialize(radius: 0, options: {})
      super(radius: radius)

      @border_color = options[:border_color]
      @border_width = options[:border_width].to_i

      validate_border!
    end

    private

    def validate_border!
      return if border_width > 0
      raise ArgumentError, 'invalid border width'
    end
  end
end
