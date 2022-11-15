require './classes/music_album'
require_relative 'local_storage'
require_relative 'mod_genre'
require_relative 'show_options'

module ModMusicAlbum
    include LocalStorage

    def add_music_album
        album = load_storage('music')
        puts 'Add a music album of your choice: '
        name = gets.chomp
        puts 'Enter the albums published date: '
        publish_date = gets.chomp.to_i
        puts 'Is your album currentley on spotify? 1 - Yes, 2 - No'
        on_spotify = gets.chomp.to_i
        puts 'Add the albums genre: '
        genre = gets.chomp
        albums = MusicAlbum.new(publish_date, on_spotify, name, genre)
        albums_info = {publish_date: publish_date, on_spotify: on_spotify, name: name, genre: genre}
        update_storage('music', albums_info)
        p albums
        puts 'Album stored succesfully'
    end

    def list_music_albums
        albums = load_storage('music')
        puts 'No albums have been added yet' if albums.empty?
        albums.each { |album| puts "Album name: #{album['name']}, Albums release date: #{album['publish_date']}, 
        Is the album on Spotify? #{album['on_spotify']}, Album Genre: #{album['genre']}"}
        menu_return
    end
end