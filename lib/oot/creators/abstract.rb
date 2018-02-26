# frozen_string_literal: true

module OOT::Creators
  class Abstract
    def create_for(*_args)
      raise NotImplementedError
    end
  end
end
