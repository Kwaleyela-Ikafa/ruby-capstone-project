require_relative './local_storage'
require_relative '../classes/author'
require_relative 'show_options'

module ModAuthor
  include LocalStorage
  include ShowOptions

  def add_author
    authors = load_storage('author')
    puts 'Enter Author\'s first name'
    fname = gets.chomp
    puts 'Enter Author\'s last name'
    lname = gets.chomp
    Author.new(fname, lname)
    author_data = { lname: lname, fname: fname, id: authors.length + 1 }
    update_storage('author', author_data)
    author_data
  end

  def list_authors
    authors = load_storage('author')
    puts 'No Author have been added yet' if authors.empty?
    authors.each_with_index do |x, i|
      puts "\n #{i + 1}. First Name: #{x['fname']} Last Name: #{x['lname']} with User ID: #{x['id']} \n \n"
    end
    menu_return
  end
end
