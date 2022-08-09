require_relative 'menus'

# Main class handle all methods
class Main
  def initialize
    @menu = Menus.new
  end

  def inputs(num)
    @menu.menu_item(num)
  end

  def starting
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given id'
    puts '7 - Exit'
    num = gets.to_i
    inputs(num)
    starting if num != 7
  end
end

main = Main.new
main.starting
