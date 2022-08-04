require_relative './student'
require_relative './person'
require_relative './classroom'

class Classroom
  def initialize(label)
    @label = label
  end
  attr_accessor :label, :students

  def add_student
    new.Student(@label)
  end
end
