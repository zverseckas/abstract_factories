# frozen_string_literal: true

module OOT::Factories
  class Abstract
    def build_circle(_radius:)
      raise NotImplementedError
    end

    def build_rectangle(_width:, _height:)
      raise NotImplementedError
    end
  end
end
