# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'

module OOT::Shapes
  class BorderedRectangle < GenericCircle
    attr_reader :border_color, :border_width

    def initialize(width:, height:, border_color:, border_width:)
      super(width: width, height: height)
      @border_color = border_color
      @border_width = border_width

      validate_border!
    end

    private

    def validate_border!
      return if border_width > 0
      raise ArgumentError, 'invalid border width'
    end
  end
end
