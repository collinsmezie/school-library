# Base class
class Nameable
  def correct_name
    raise NotImplementedError, ' name is not correct'
  end
end
