require_relative '../base'
require_relative '../person'
require 'yaml'

describe Base do
  before :each do
    @base = Base.new('Nedjwa')
  end
  it 'takes one parameter and returns a base object' do
    @base.should be_an_instance_of Base
  end
  it 'returns name is nedjwa' do
    @base.nameable.should eql 'Nedjwa'
  end
end

describe CapitalizeDecorator do
  context 'test trimmer class' do
    it 'should returns names length equals to 10' do
      person = Person.new(23, 'nedjwa', 'teacher')
      cap = CapitalizeDecorator.new(person)
      expect(cap.correct_name).to eq 'Nedjwa'
    end
  end
end

describe TrimmerDecorator do
  context 'test trimmer class' do
    it 'should returns names length equals to 10' do
      person = Person.new(23, 'nedjwafffffffffffffff', 'teacher')
      trim = TrimmerDecorator.new(person)
      expect(trim.correct_name).to eq 'nedjwaffff'
    end
  end
end
