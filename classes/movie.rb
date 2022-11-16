require_relative 'item'

class Movie < Item
  attr_accessor :silent

  def initialize(name, source, published_data, silent: false)
    super(publish_date: published_data)
    @name = name
    @silent = silent
    @source = source
  end

  private

  def can_be_archived?
    true if super || @silent
  end
end
