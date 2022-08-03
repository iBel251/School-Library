require_relative './student'
require_relative './teacher'
require_relative './nameable'
require_relative './base'

class Person < Nameable
  extend Student
  extend Teacher

  def initialize(age, name, parent_permission: true)
    super(self)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental_date = ''
  end

  attr_reader :id
  attr_accessor :name, :age

  def isof_age?
    @age > 18
  end

  def can_use_services?
    @parent_permission || isof_age?
  end

  def correct_name
    @name
  end

  def add_rental(rental_date, book_data)
    person_data = {
      age => @date,
      name => @name,
      parent_permission => @parent_permission
    }
    @rental_date << rental_date
    rental_date.person << self
    new.Rental(rental_date, person_data, book_data)
  end

  private :isof_age?
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
