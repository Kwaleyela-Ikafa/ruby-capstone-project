require_relative './../modules/listing'
require_relative './../modules/show_options'
require_relative '../modules/mod_games'
require_relative '../modules/mod_authors'
require './modules/listing'
require './modules/show_options'
require './modules/mod_music_album'
require './modules/mod_genre'
require './modules/list_books'
require './modules/list_labels'

class App
  include ListBooks
  include ListLabels
  include ShowOptions
  include ModGame
  include ModAuthor
  include ModMusicAlbum
  include ModGenre

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
    elsif choice >= 8 && choice <= 13
      adding_methods(choice)
    else
      puts 'Wrong input'
    end
  end

  def listing_methods2(choice)
    case choice
    when 5
      list_genres
    when 6
      list_all_labels(@labels)
    when 7
      list_sources(@sources)
    else
      puts 'Wrong input'
    end
  end

  def listing_methods1(choice)
    case choice
    when 1
      list_all_books(@books)
    when 2
      list_music_albums
    when 3
      list_movies(@movies)
    when 4
      list_games
    else
      puts 'Wrong input'
    end
  end

  def adding_methods(choice)
    case choice
    when 8
      # book_options(@genres, @authors, @sources, @labels)
      add_book
    when 9
      add_music_album
    when 10
      movie_options(@genres, @authors, @sources, @labels)
    when 11
      add_game
    when 12
      list_authors
    else
      puts 'Thank you for using the app'
      exit
    end
  end
end
