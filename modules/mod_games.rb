require_relative 'local_storage'
require_relative '../classes/author'
require_relative '../classes/game'

module ModGame
  include LocalStorage

  def add_game
    game = load_storage('games')
    puts 'is this Game Multi Player? (Y/N)'
        multiplayer = gets.chomp
        puts 'Enter last played date for this game(dd-mm-yyyy): '
        last_played_date = gets.chomp
        status =multiplayer.downcase == 'y' ? 'Yes' : 'No'
        games = Game.new(multiplayer, last_played_date)
        game_data = {last_played: last_played_date, multiplayer: multiplayer.downcase == 'y' ? true : false}
        update_storage('games', game_data)
        puts "\n Game with Last Play Date: #{last_played_date} and Multiplayer: #{multiplayer.downcase == 'y' ? 'enabled' : 'disabled' } added succesfully \n \n"
  end

  def list_games
    game = load_storage('games')
        puts 'No Game have been added yet' if game.empty?
        game.each_with_index { |x, i| puts "\n #{i + 1}. Game with Last Play Date: #{x['last_played']} and Multiplayer: #{x['multiplayer'] == 'enabled' ? 'True' : 'False' } \n \n"}
  end
end