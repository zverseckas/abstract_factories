# frozen_string_literal: true

module OOT
  class Texture
    attr_reader :path

    def initialize(path:)
      @path = path
    end
  end
end
