# frozen_string_literal: true

require 'oot/shapes/generic/circle'

module OOT::Shapes
  class TexturedCircle < GenericCircle
    attr_reader :texture

    def initialize(radius:, texture:)
      super(radius: radius)
      @texture = texture
    end
  end
end
