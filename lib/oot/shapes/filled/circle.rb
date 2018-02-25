# frozen_string_literal: true

require 'oot/shapes/generic/circle'

module OOT::Shapes
  class FilledCircle < GenericCircle
    attr_reader :fill

    def initialize(radius:, fill:)
      super(radius: radius)
      @fill = fill
    end
  end
end
