# frozen_string_literal: true

require 'oot/shapes/generic/rectangle'

module OOT::Shapes
  class FilledRectangle < GenericRectangle
    attr_reader :fill

    def initialize(width:, height:, fill:)
      super(width: width, height: height)
      @fill = fill
    end
  end
end
