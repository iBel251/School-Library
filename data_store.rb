require 'pry'
require_relative 'io_file'
require 'json'

class DataStore
  def initialize(books = [], persons = [], rentals = [])
    @books = books
    @persons = persons
    @rentals = rentals
    @file = ReadWriteFile.new
  end

  def book(mode)
    file_name = 'books.json'
    if mode == 'w'
      data = JSON.generate(@books)
      @file.write_file(data, file_name)
    else
      @file.read_file(file_name)
    end
  end
  def person(mode)
    file_name = 'person.json'
    if mode == 'w'
      data = JSON.generate(@persons)
      @file.write_file(data, file_name)
    else
      @file.read_file(file_name)
    end
  end
end
