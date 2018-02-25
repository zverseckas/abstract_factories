# frozen_string_literal: true

module OOT::Shapes
  class AbstractShape
    def area
      raise NotImplemented
    end

    def perimeter
      raise NotImplemented
    end
  end
end
