require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    trimmed = @nameable.correct_name[0, 9]
    @nameable.correct_name.length >= 10 ? trimmed : @nameable.correct_name
  end
end