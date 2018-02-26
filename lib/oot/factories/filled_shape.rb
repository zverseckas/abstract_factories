# frozen_string_literal: true

require 'oot/factories/abstract'

require 'oot/shapes/colored/circle'
require 'oot/shapes/colored/rectangle'

require 'oot/shapes/textured/circle'
require 'oot/shapes/textured/rectangle'

require 'oot/rgba_color'
require 'oot/texture'

module OOT::Factories
  class FilledShape < Abstract
    ALLOWED_CLASSES = [
      OOT::Shapes::ColoredCircle,
      OOT::Shapes::TexturedCircle,

      OOT::Shapes::ColoredRectangle,
      OOT::Shapes::TexturedRectangle,
    ].freeze

    attr_reader :circle_class, :rectangle_class, :options

    def initialize(circle_class:, rectangle_class:, options: {})
      @circle_class = circle_class
      @rectangle_class = rectangle_class
      @options = default_options.merge(options.compact)

      validate!
    end
    
    def build_circle(radius:)
      circle_class.new(
        radius: radius,
        options: options,
      )
    end

    def build_rectangle(width:, height:)
      rectangle_class.new(
        width: width,
        height: height,
        options: options,
      )
    end

    private

    def validate!
      return if ALLOWED_CLASSES.include?(circle_class) &&
                ALLOWED_CLASSES.include?(rectangle_class)
      raise ArgumentError, 'unknown shape class'
    end

    def default_options
      {
        color: OOT::RGBAColor.new,
        texture: OOT::Texture.new,
      }
    end
  end
end
