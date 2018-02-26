# frozen_string_literal: true

require 'oot/factories/abstract'

require 'oot/shapes/bordered/circle'
require 'oot/shapes/bordered/rectangle'

require 'oot/shapes/shadowed/circle'
require 'oot/shapes/shadowed/rectangle'

module OOT::Factories
  class DecoratedShape < Abstract
    ALLOWED_CLASSES = [
      OOT::Shapes::BorderedCircle,
      OOT::Shapes::ShadowedCircle,

      OOT::Shapes::BorderedRectangle,
      OOT::Shapes::ShadowedRectangle,
    ].freeze

    attr_reader :circle_proto, :rectangle_proto

    def initialize(circle_proto:, rectangle_proto:)
      @circle_proto = circle_proto
      @rectangle_proto = rectangle_proto

      validate!
    end

    def build_circle(radius:)
      copy = circle_proto.deep_clone

      copy.radius = radius

      copy.validate!
      copy
    end

    def build_rectangle(width:, height:)
      copy = rectangle_proto.deep_clone

      copy.width = width
      copy.height = height

      copy.validate!
      copy
    end

    private

    def validate!
      return if ALLOWED_CLASSES.include?(circle_proto.class) &&
                ALLOWED_CLASSES.include?(rectangle_proto.class)
      raise ArgumentError, 'unknown shape prototype'
    end
  end
end
