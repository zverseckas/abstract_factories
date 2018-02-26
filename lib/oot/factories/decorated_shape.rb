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
      circle_proto.class.new(
        radius: radius,
        options: options(circle_proto),
      )
    end

    def build_rectangle(width:, height:)
      rectangle_proto.class.new(
        width: width,
        height: height,
        options: options(rectangle_proto),
      )
    end

    private

    def validate!
      return if ALLOWED_CLASSES.include?(circle_proto.class) &&
                ALLOWED_CLASSES.include?(rectangle_proto.class)
      raise ArgumentError, 'unknown shape prototype'
    end

    def options(proto)
      return border_options(proto) if proto.respond_to?(:border_color)
      shadow_options(proto) if proto.respond_to?(:shadow_color)
    end

    def border_options(proto)
      {
        border_color: proto.border_color,
        border_width: proto.border_width,
      }
    end

    def shadow_options(proto)
      {
        shadow_color: proto.shadow_color,
        shadow_spread: proto.shadow_spread,
        shadow_blur: proto.shadow_blur,
      }
    end
  end
end
