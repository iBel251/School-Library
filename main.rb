require_relative 'menus'

# Main class handle all methods
class Main
  def initialize
    @menu = Menus.new
  end

  def inputs(int)
    if int == '7'
      @menu.tree7(int)
    else
      @menu.tree1(int)
      @menu.tree2(int)
      @menu.tree3(int)
      @menu.tree4(int)
      @menu.tree5(int)
      @menu.tree6(int)
      starting
    end
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
    num = gets.chomp
    inputs(num)
  end
end

main = Main.new
main.starting
