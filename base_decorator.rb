# frozen_string_literal: true

require_relative './nameable'

# base decorator
class BaseDecorator < Nameable
  def initialize(nameable_obj)
    @nameable_obj = nameable_obj
    super()
  end

  def correct_name
    @nameable_obj.correct_name
  end
end
