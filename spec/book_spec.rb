require_relative '../book'
require 'yaml'

describe Book do
  before :each do
    @book = Book.new('rich dad poor dad', 'Robert T')
  end
  it 'returns the correct author' do
    @book.author.should eql 'Robert T'
  end
  it 'returns the correct title' do
    @book.title.should eql 'rich dad poor dad'
  end
end
