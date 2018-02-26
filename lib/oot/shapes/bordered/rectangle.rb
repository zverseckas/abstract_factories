# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'
require 'oot/cloneable'

module OOT::Shapes
  class BorderedRectangle < GenericRectangle
    include OOT::Cloneable

    attr_accessor :border_color, :border_width

    def initialize(width: 0, height: 0, options: {})
      super(width: width, height: height)

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
