require_relative '../teacher'
require 'yaml'

describe Teacher do
  before :each do
    @teacher = Teacher.new(25, 'math', 'said', 'teacher')
  end
  it 'takes four parameters and returns a student object' do
    @teacher.should be_an_instance_of Teacher
  end
  it 'returns teachers name said' do
    @teacher.correct_name.should eql 'said'
  end
  it 'returns teachers age is 25' do
    @teacher.age.should eql 25
  end
  it 'returns the teacher can uses services is true' do
    @teacher.can_use_service?.should eql true
  end
end
