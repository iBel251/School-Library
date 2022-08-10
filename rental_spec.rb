require_relative '../rental'
require 'yaml'

describe Rental do
  before :each do
    @rental = Rental.new('10/08/2022', 1, 2)
  end
  it 'takes one parameter and returns a Rental object' do
    @rental.should be_an_instance_of Rental
  end
  it 'returns persons id wich is 1' do
    @rental.person_data.should eql 1
  end
  it 'returns books id wich is 2' do
    @rental.book_data.should eql 2
  end
  it 'returns date 10/08/2022' do
    @rental.date.should eql '10/08/2022'
  end
end
