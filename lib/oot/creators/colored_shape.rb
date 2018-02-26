# frozen_string_literal: true

require 'oot/creators/abstract'

require 'oot/shapes/colored/circle'
require 'oot/shapes/colored/rectangle'

module OOT::Creators
  class ColoredShape < Abstract
    attr_reader :shape

    def initialize(shape)
      @shape = shape
    end

    def create_for(*args)
      case shape
      when :circle
        create_circle(*args)
      when :rectangle
        create_rectangle(*args)
      else
        raise ArgumentError, 'unsupported shape'
      end
    end

    private

    def create_circle(*args)
      OOT::Shapes::ColoredCircle.new(*args)
    end

    def create_rectangle(*args)
      OOT::Shapes::ColoredRectangle.new(*args)
    end
  end
end
