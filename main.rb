require './classes/app'
def show_options
  options = [
    '1) List all books',
    '2) List all music albums',
    '3) List all movies',
    '4) List of games',
    "5) List all genres (e.g 'Comedy', 'Thriller')",
    "6) List all labels (e.g. 'Gift', 'New')",
    "7) List all sources (e.g. 'From a friend', 'Online shop')",
    '8) Add a book',
    '9) Add a music album',
    '10) Add a movie',
    '11) Add a game',
    '12) List all authors',
    '13) Quite'
  ]
  options.each { |item| puts item }
end

def main
  app = App.new
  loop do
    show_options
    choice = gets.chomp.to_i
    app.which_method_to_call(choice)
  end
end

main
