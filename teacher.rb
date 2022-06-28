# frozen_string_literal: true

require_relative './person'

# Teacher class definition
class Teacher < Person
  def initialize(specialization)
    @specialization = specialization
    super(age, name, parent_permission: parent_permission)
  end

  def can_use_services?
    true
  end
end
