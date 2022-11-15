require_relative '../classes/book'
require_relative 'local_storage'


module ListBooks
  include LocalStorage

  def list_all_books(books)
    puts 'There are no books added yet.' if books.empty?
    books.each_with_index do |book, index|
      puts "#{index + 1}) id: #{book.id} author: #{book.author} genre: #{book.genre}"
    end
  end

  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State: (good or bad) '
    cover_state = gets.chomp
    # print 'Publish date [YYYY-MM-DD]:'
    # publish_date = gets.chomp
    Book.new(publisher, cover_state)
    book_info =  {publisher: publisher, cover_state: cover_state}
    update_storage('book', book_info)
  end
end
