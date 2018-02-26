# frozen_string_literal: true

module OOT::Cloneable
  def deep_clone
    copy = clone

    copy.instance_variables.each do |attr|
      self.instance_variable_set(
        attr, self.instance_variable_get(attr).clone,
      )
    end

    copy
  end
end
