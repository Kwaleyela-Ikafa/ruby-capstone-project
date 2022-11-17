require_relative 'local_storage'
require_relative 'show_options'

module ModSource
  include LocalStorage
  include ShowOptions

  def list_sources
    sources = load_storage('sources')
    puts 'No sources have been added yet' if sources.empty?
    sources.each { |source| puts "Source Name: #{source['name']}" }
    puts
    menu_return
  end
end
