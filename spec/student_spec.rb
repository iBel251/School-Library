require_relative '../student'
require 'yaml'

describe Student do
  before :each do
    @student = Student.new('history', 23, 'layla', 'student', true)
  end
  it 'takes five parameters and returns a student object' do
    @student.should be_an_instance_of Student
  end
  it 'returns persons age is 25' do
    @student.age.should eql 23
  end
  it 'returns the persons classroom is history' do
    @student.classroom.should eql 'history'
  end
  it 'returns the persons permission is true' do
    @student.can_use_services?.should eql true
  end
  it 'returns the play hooky input which is ¯\(ツ)/¯' do
    @student.play_hooky.should eql "¯\(ツ)/¯"
  end
end
