require_relative './person'

class Teacher < Person
  def initialize(age, specialization, name, profession)
    super(age, name, profession)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
