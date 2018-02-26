# frozen_string_literal: true

require 'oot/factories/abstract'

module OOT::Factories
  class Universal < Abstract
    attr_reader :circle_creator, :rectangle_creator, :options

    def initialize(circle_creator:, rectangle_creator:, options:)
      @circle_creator = circle_creator
      @rectangle_creator = rectangle_creator
      @options = options
    end

    def build_circle(radius:)
      circle_creator.create_for(
        radius: radius,
        options: options
      )
    end

    def build_rectangle(width:, height:)
      rectangle_creator.create_for(
        width: width,
        height: height,
        options: options
      )
    end
  end
end
