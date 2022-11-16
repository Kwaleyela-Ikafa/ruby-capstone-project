require './classes/music_album'
require_relative 'local_storage'
require './modules/mod_genre'
require_relative 'show_options'

module ModMusicAlbum
  include LocalStorage
  include ModGenre
  include ShowOptions

  def add_music_album
    load_storage('music')
    puts 'Add a music album of your choice: '
    name = gets.chomp.to_s
    string_checker(name)
    puts 'Enter the albums published date in this format [YYYY/DD/MM]: '
    publish_date = gets.chomp
    string_checker(publish_date)
    puts 'Is your album currentley on spotify? 1 - Yes, 2 - No'
    on_spotify = gets.chomp.to_i
    on_spotify = boolean_converter(on_spotify)
    puts 'Add the albums genre: '
    genre = genre_option
    albums = MusicAlbum.new(publish_date, on_spotify, name, genre)
    albums_info = { publish_date: publish_date, on_spotify: on_spotify, name: name, genre: genre }
    update_storage('music', albums_info)
    p albums
    puts 'Album stored succesfully'
    menu_return
  end

  def boolean_converter(var)
    case var
    when 1
      true
    when 2
      false
    else
      puts ''
      puts 'Please submit either 1 or 2'
      puts 'Hit Enter to retry'
      gets.chomp
      add_music_album
    end
  end

  def string_checker(string)
    return unless string.empty?

    puts 'No submission detected, please try again.'
    add_music_album
  end

  def list_music_albums
    albums = load_storage('music')
    puts 'No albums have been added yet' if albums.empty?
    albums.each do |album|
      puts "Album name: #{album['name']}, Albums release date: #{album['publish_date']},
        Is the album on Spotify? #{album['on_spotify']}, Album Genre: #{album['genre']}"
      puts ''
    end
    menu_return
  end
end
