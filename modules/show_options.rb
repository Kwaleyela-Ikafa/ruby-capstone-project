require_relative 'selecting'

module ShowOptions
  include Selecting

  def book_options(genres, authors, sources, labels)
    puts 'Creating a book'
    selecting_a_genre(genres)
    selecting_an_author(authors)
    selecting_a_source(sources)
    selecting_a_label(labels)
    puts 'Add publisher for the book:'
    publisher = gets.chomp
    puts 'Add cover state for the book:'
    cover_state = gets.chomp

    puts "#{publisher} published a book with #{cover_state} state."
  end

  def music_album_options(genres, authors, sources, labels)
    puts 'Creating a music album'
    selecting_a_genre(genres)
    selecting_an_author(authors)
    selecting_a_source(sources)
    selecting_a_label(labels)
    puts 'Is it available on spotify? (T/F)'
    answer = gets.chomp.downcase
    answer = answer == 't'
    puts "The music album was added and available on spotify is #{answer}"
  end

  def movie_options(genres, authors, sources, labels)
    puts 'Creating a movie'
    selecting_a_genre(genres)
    selecting_an_author(authors)
    selecting_a_source(sources)
    selecting_a_label(labels)
    puts 'Is it silet?'
    answer = gets.chomp.downcase
    answer = answer == 't'
    puts "The movie was added with silet to #{answer}"
  end

  def game_options(genres, authors, sources, labels)
    puts 'Creating a game'
    selecting_a_genre(genres)
    selecting_an_author(authors)
    selecting_a_source(sources)
    selecting_a_label(labels)
    puts 'Is it multiplayer?'
    answer = gets.chomp.downcase
    answer = answer == 't'
    puts 'When is the game last played?'
    date = gets.chomp
    puts "The game was added with multiplayer set to #{answer} on #{date}"
  end

  
  def menu_return
    puts ''
    puts 'Press Enter to go back to the menu'
    gets.chomp
    puts ''
  end
end
