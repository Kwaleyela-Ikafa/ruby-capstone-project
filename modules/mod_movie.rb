require_relative './../classes/movie'
require_relative 'local_storage'
require_relative './../classes/source'
require_relative 'show_options'

module ModMovie
  include LocalStorage
  include ShowOptions

  def add_movie
    puts 'Add the movie name: '
    name = gets.chomp
    puts 'Enter the movie published date: '
    publish_date = gets.chomp
    puts 'Is the added movie silent? 1 - Yes, 2 - No'
    silent = gets.chomp.to_i
    silent = true if silent == 1
    puts 'Add the movie source: '
    source = gets.chomp
    new_movie = Movie.new(name, source, publish_date, silent: silent)
    new_source = Source.new(source)
    new_source.add_item(new_movie)
    movies_info = { publish_date: publish_date, silent: silent, name: name, source: source }
    source_info = { name: source }
    update_storage('sources', source_info)
    update_storage('movies', movies_info)
    puts "#{name} added to the movies list successfully"
    menu_return
  end

  def list_movies
    movies = load_storage('movies')
    puts 'No movies have been added yet' if movies.empty?
    movies.each do |movie|
      puts "Movie name: #{movie['name']}, Movie release date: #{movie['publish_date']},"
      puts "Is the movie silent? #{movie['silent']}, Movie Source: #{movie['source']}"
      puts
    end
    menu_return
  end
end
