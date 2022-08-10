require_relative '../person'
require 'yaml'

describe Person do
  before :each do
    @person = Person.new(25, 'bello', 'teacher')
  end
  it 'returns persons name bello' do
    @person.correct_name.should eql 'bello'
  end
  it 'returns persons age is 25' do
    @person.age.should eql 25
  end
  it 'returns the persons permission is true' do
    @person.can_use_services?.should eql true
  end
end
