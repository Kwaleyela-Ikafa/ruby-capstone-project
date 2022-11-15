require_relative '../classes/book'
require_relative 'local_storage'

module ListBooks
  include LocalStorage

  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State: (good or bad) '
    cover_state = gets.chomp
    Book.new(publisher, cover_state)
    book_info = { publisher: publisher, cover_state: cover_state }
    update_storage('book', book_info)
    puts 'book stored'
  end

  # rubocop:disable Lint/ShadowedArgument
  def list_all_books(books)
    books = load_storage('book')
    puts 'There are no books added yet.' if books.empty?
    books.each_with_index do |book, index|
      puts "#{index + 1}) publisher: #{book['publisher']} cover_state: #{book['cover_state']}"
    end
  end
  # rubocop:enable Lint/ShadowedArgument
end
