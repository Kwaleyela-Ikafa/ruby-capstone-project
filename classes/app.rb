require_relative './../modules/listing'
require_relative './../modules/show_options'
require_relative './../modules/mod_movie'
require_relative './../modules/mod_source'

class App
  include Listing
  include ShowOptions
  include ModMovie
  include ModSource

  attr_accessor :books, :music_albums, :movies, :games, :genres, :labels, :sources

  def initialize
    @books = []
    @music_albums = []
    @movies = []
    @games = []
    @genres = []
    @labels = []
    @sources = []
    @authors = []
  end

  def which_method_to_call(choice)
    if choice <= 4 && choice.positive?
      listing_methods1(choice)
    elsif choice > 4 && choice < 8
      listing_methods2(choice)
    elsif choice >= 8 && choice <= 12
      adding_methods(choice)
    else
      puts 'Wrong input'
    end
  end

  def listing_methods2(choice)
    case choice
    when 5
      list_genres(@genres)
    when 6
      list_labels(@labels)
    when 7
      list_sources
    else
      puts 'Wrong input'
    end
  end

  def listing_methods1(choice)
    case choice
    when 1
      list_books(@books)
    when 2
      list_music_albums(@music_albums)
    when 3
      list_movies
    when 4
      list_games(@games)
    else
      puts 'Wrong input'
    end
  end

  def adding_methods(choice)
    case choice
    when 8
      book_options(@genres, @authors, @sources, @labels)
    when 9
      music_album_options(@genres, @authors, @sources, @labels)
    when 10
      add_movie
    when 11
      game_options(@genres, @authors, @sources, @labels)
    else
      puts 'Thank you for using the app'
      exit
    end
  end
end
