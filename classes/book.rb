require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(label, publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
    add_label(label)
  end

  private

  def can_be_archived?
    true if super || cover_state == 'bad'
  end
end
