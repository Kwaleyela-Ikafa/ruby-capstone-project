require_relative './item'

class Author < Item
  def initialize(fname, lname)
    super()
    @id = Random.rand(1...200)
    @first_name = fname
    @last_name = lname
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end
