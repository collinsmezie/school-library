require_relative './nameable'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

# Person object class
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :rentals, :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @name = name
    @parent_permission = parent_permission
    @age = age
    @id = Random.rand(1...5000)
    @rentals = []
  end

  def of_age?
    @age >= 18
  end
  private :of_age?
  def can_use_services?
    of_age? || @parent_permission
  end
  public :can_use_services?
  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
    rental.person = self
  end
end
