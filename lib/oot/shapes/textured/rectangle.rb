# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'

module OOT::Shapes
  class TexturedRectangle < GenericRectangle
    attr_reader :texture

    def initialize(width:, height:, options: {})
      super(width: width, height: height)
      @texture = options[:texture]
    end
  end
end
