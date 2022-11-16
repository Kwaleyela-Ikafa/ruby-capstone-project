require_relative 'item'

class Movie < Item
  attr_accessor :silent

  def initialize(silent: false)
    super()
    @silent = silent
  end

  private

  def can_be_archived?
    true if super || @silent
  end
end
