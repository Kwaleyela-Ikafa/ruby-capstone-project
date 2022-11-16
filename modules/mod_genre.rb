require_relative 'local_storage'
require './classes/genre'

module ModGenre
  include LocalStorage

  def add_genre(genre)
    name = genre
    string_checker(name)
    new_genre = Genre.new(name)
    genre_info = { id: new_genre.id, name: name }
    update_storage('genre', genre_info)
    puts 'Genre added successfully'
  end

  def string_checker(string)
    return unless string.empty?

    puts 'No submission detected, please try again.'
    add_genre
  end

  def list_genres
    genres = load_storage('genre')
    puts 'No genres have been added yet' if genres.empty?
    genres.each { |genre| puts "Genre: #{genre['name']}" }
    menu_return
  end

  def genre_option
    genres = load_storage('genre')
    if genres.empty?
      puts 'No Genres have been added yet'
    else
      puts 'Do you want to add your own genre, or select from a list?.
                1- Create my own, 2- Select from a list'
      input = gets.chomp.to_i
    end

    if input == 1
      puts 'Please insert the name of your Genre'
      genre_choice = gets.chomp
      add_genre(genre_choice)
      puts "Now that you've made your genre, please select it from this list: "
      genres = load_storage('genre')
    end
    genres.each_with_index { |genre, index| puts("#{index} Name: #{genre['name']}") }
    selection = gets.chomp.to_i
    choice = genres.filter.with_index { |_choice, index| index == selection }
    choice[0]['name']
  end
end
