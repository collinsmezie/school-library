require_relative './base_decorator'

# Trimmer decorator
class TrimmerDecorator < BaseDecorator
  def correct_name
    @name = @nameable_obj.correct_name
    @name.length > 10 ? "#{@name[0...10]}..." : @name
  end
end
