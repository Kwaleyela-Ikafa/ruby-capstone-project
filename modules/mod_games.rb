require_relative 'local_storage'
require_relative '../classes/author'
require_relative '../classes/game'
require_relative './mod_authors'
require_relative 'show_options'

module ModGame
  include LocalStorage
  include ModAuthor
  include ShowOptions

  def add_game
    load_storage('games')
    puts 'is this Game Multi Player? (Y/N)'
    multiplayer = gets.chomp
    puts 'Enter last played date for this game(dd-mm-yyyy): '
    last_played_date = gets.chomp
    status = multiplayer.downcase == 'y' ? 'Yes' : 'No'
    author_arr = []
    puts 'Enter 1 to create with existing Author or 2 to create an author for this game'
    author = gets.chomp.to_i
    if author == 2
      author_arr << add_author
    else
      list_authors
      puts 'Select author from the list by ID'
      id = gets.chomp.to_i
      load_storage('author').select do |x|
        author_arr << x if x['id'] == id
      end
    end
    Game.new(multiplayer, last_played_date)
    game_data = { last_played: last_played_date, multiplayer: status, author: author_arr }
    update_storage('games', game_data)
    puts "\n Game with Last Play Date: #{last_played_date} and Multiplayer: #{multiplayer.downcase == 'y' ? 'enabled' : 'disabled'} added succesfully \n \n"
    menu_return
  end

  def list_games
    game = load_storage('games')
    puts 'No Game have been added yet' if game.empty?
    game.each_with_index do |x, i|
      puts "\n #{i + 1}. Game with Last Play Date: #{x['last_played']} and Multiplayer: #{x['multiplayer'] == 'enabled' ? 'True' : 'False'} \n \n"
    end
    menu_return
  end
end
