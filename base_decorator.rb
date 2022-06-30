require_relative './nameable'

# base decorator
class BaseDecorator < Nameable
  attr_accessor :nameable_obj

  def initialize(nameable_obj)
    @nameable_obj = nameable_obj
    super()
  end

  def correct_name
    @nameable_obj.correct_name
  end
end
