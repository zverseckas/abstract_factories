# frozen_string_literal: true

module OOT
  class Texture
    attr_reader :path

    def initialize(path: nil)
      @path = path
    end
  end
end
