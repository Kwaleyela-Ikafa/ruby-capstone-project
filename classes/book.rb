require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state, :archived

  def initialize(label, publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
    add_label(label)
  end

  def can_be_archieved?
    true if super || cover_state == 'bad'
  end
end
