require_relative 'local_storage'

module ModSource
  include LocalStorage

  def list_sources
    sources = load_storage('sources')
    puts 'No sources have been added yet' if sources.empty?
    sources.each { |source| puts "Source Name: #{source['name']}" }
    puts
  end
end
