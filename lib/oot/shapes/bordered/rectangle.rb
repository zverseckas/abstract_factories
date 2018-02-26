# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'

module OOT::Shapes
  class BorderedRectangle < GenericRectangle
    attr_reader :border_color, :border_width

    def initialize(width:, height:, options: {})
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
