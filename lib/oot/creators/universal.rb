# frozen_string_literal: true

require 'oot/creators/abstract'

module OOT::Creators
  class Universal < Abstract
    attr_reader :class_name

    def initialize(class_name:)
      @class_name = class_name
    end

    def create_for(*args)
      class_name.new(*args)
    end
  end
end
