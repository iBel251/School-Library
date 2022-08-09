require_relative 'person'
require_relative 'classroom'
require_relative 'student'
require_relative 'teacher'
require_relative 'data_store'
# Console entry point
class App
  def initialize
    store = DataStore.new
    @book_arr = store.book('r')
    @person_arr = store.person('r')
    @rental_arr = []
    @id = 0
  end

  def add_student
    printf 'name:'
    name = gets.chomp
    printf 'age:'
    age = gets.chomp
    printf 'permission parents? [Y/N]:'
    permission = gets.chomp
    true_permission = permission == 'y' || 'yes' || 'Y'
    puts "Name: #{name} Age: #{age} created successfully"
    @id += 1
    @person_arr.push({ id: @id.to_s, name: name, age: age, profession: 'Student', permission: true_permission })
  end

  def add_teacher
    printf 'name:'
    name = gets.chomp
    printf 'age:'
    age = gets.chomp
    printf 'specialization:'
    specialization = gets.chomp
    @id += 1
    @person_arr.push({ id: @id.to_s, name: name, age: age, profession: 'Teacher' })
    puts "Name: #{name} specialzation:#{specialization} Age: #{age}  Added successfuly!"
  end

  def list_books
    puts("Amount of books in the library : #{@book_arr.length}")
    @book_arr.each_with_index do |book, key|
      puts "#{key + 1}) Title: #{book['title']}, Author: #{book['author']}"
    end
    puts ' '
  end

  def list_persons
    puts("Total number of persons registered : #{@person_arr.length}")
    @person_arr.each_with_index do |perso, key|
      puts "#{key + 1}) [#{perso['profession']}] Name: #{perso['name']} ID: #{perso['id']} Age: #{perso['age']}"
    end
    puts ' '
  end

  def create_book
    printf 'Title:'
    title = gets.chomp
    printf 'Author:'
    author = gets.chomp
    @book_arr.push({ title: title, author: author })
    puts 'Book created successfuly'
    puts ' '
  end

  def new_person
    puts 'Do you want to create a student (1) or a teacher (2)?[input the number]:'
    num = gets.chomp
    case num
    when '1'
      add_student
    when '2'
      add_teacher
    else
      puts 'You entered a wrong number!'
    end
    puts ' '
  end

  def create_rental
    books_length = @book_arr.length
    puts 'Please select a book from the following list by number :'
    list_books
    book = gets.chomp
    while book.to_i > books_length.to_i
      puts 'Wrong number! Please choose the correct number again.'
      book = gets.chomp
    end
    book_to_add = @book_arr[book.to_i - 1]
    puts 'Please select a person from the following list by number:'
    list_persons
    person_id = gets.chomp
    person_to_add = @person_arr[person_id.to_i - 1]
    printf 'Date:'
    date_to_add = gets.chomp
    @rental_arr.push({ date: date_to_add, book: book_to_add, person: person_to_add })
    puts 'Rental created successfuly'
    puts ' '
  end

  def list_rental_by_id
    puts 'Enter a person Id to see he\'s rentals'
    printf 'Id:'
    id = gets.chomp
    find_rentals = @rental_arr.select { |rental| rental['person']['id'] == id }
    puts 'Rentals:'
    find_rentals.each_with_index do |rental, idx|
      puts "#{idx + 1}) Name: #{rental['person']['name']}, Book: #{rental['book']['title']} Date: #{rental['date']}"
    end
    puts ' '
  end

  def exit_page
    store = DataStore.new(@book_arr, @person_arr, @rental_arr)
    store.book('w')
    store.person('w')
  end
end
