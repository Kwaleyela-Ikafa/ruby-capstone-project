require_relative 'item'

class Movie < Item
  attr_accessor :silent, :source, :name

  def initialize(name, source, published_data, silent: false)
    super(publish_date: published_data)
    @name = name
    @silent = silent
    @source = source
  end

  def can_be_archieved?
    @silent
  end
end
