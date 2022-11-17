require_relative '../classes/book'
require_relative 'local_storage'
require_relative 'show_options'
require './classes/label'

module ListBooks
  include LocalStorage
  include ShowOptions

  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State: (good or bad) '
    cover_state = gets.chomp.downcase

    puts 'Give it a label:'
    print 'Title: '
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    label = Label.new(title, color)

    book = Book.new(label, publisher, cover_state)
    label.add_item(book)

    @labels << label

    label_info = { Title: title, Color: color }
    update_storage('label', label_info)

    book_info = { publisher: publisher, cover_state: cover_state }
    update_storage('book', book_info)
    puts 'book stored'
    puts ' '
  end

  # rubocop:disable Lint/ShadowedArgument
  def list_all_books(books)
    books = load_storage('book')
    puts 'There are no books added yet.' if books.empty?
    books.each_with_index do |book, index|
      puts "#{index + 1}) publisher: #{book['publisher']} cover_state: #{book['cover_state']}"
      puts ''
    end
    menu_return
  end
  # rubocop:enable Lint/ShadowedArgument
end
