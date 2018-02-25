# frozen_string_literal: true

require 'oot/shapes/generic/circle'

module OOT::Shapes
  class BorderedCircle < GenericCircle
    attr_reader :border_color, :border_width

    def initialize(radius:, border_color:, border_width:)
      super(radius: radius)

      @border_color = border_color
      @border_width = border_width.to_i

      validate_border!
    end

    private

    def validate_border!
      return if border_width > 0
      raise ArgumentError, 'invalid border width'
    end
  end
end
