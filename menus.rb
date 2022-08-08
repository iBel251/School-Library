require_relative 'app'

# Options to choose
class Menus
  def initialize
    @app = App.new
  end

  def menu_item(choice)
    case choice
    when 1
      @app.list_books
    when 2
      @app.list_persons
    when 3
      @app.new_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    when 6
      @app.list_rental_by_id
    else
      puts 'Exit'
    end
  end
end
