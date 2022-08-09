require 'pry'
require_relative 'io_file'
require 'json'

class DataStore
  def initialize(books, persons, rentals)
    @books = books
    @persons = persons
    @rentals = rentals
    @file = ReadWriteFile.new
  end

  def book(_mode)
    data = JSON.generate(@books)
    @file.write_file(data, 'books.json')
  end

  def persons(_mode)
    data = JSON.generate(@persons)
    @file.write_file(data, 'persons.json')
  end

  def rentals(_mode)
    data = JSON.generate(@rentals)
    @file.write_file(data, 'rentals.json')
  end
end
