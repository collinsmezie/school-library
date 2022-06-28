require_relative './person'

# Student class definition
class Student < Person
  def initialize(age, name = 'unknown', parent_permission: true, classroom)
    super(age, name, parent_permission: parent_permission)

    @classroom = classroom
  end

  attr_reader :classroom 

  def play_hooky
    "¯\(ツ)/¯"
  end
end


