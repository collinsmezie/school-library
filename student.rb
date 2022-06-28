require_relative './person'

# Student class definition
class Student < Person
  def initialize(classroom)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  attr_accessor :classroom, :parent_permission

  def play_hooky
    "¯\(ツ)/¯"
  end
end

person1 = Student.new(true)
puts person1.name
puts person1.age
puts person1.parent_permission
puts person1.attr_accessor
