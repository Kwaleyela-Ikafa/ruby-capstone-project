require './item'

class Author < Item
  def initialize(fname, lname)
    super(publish_date)
    @id = Random.rand(1...200)
    @firstname = fname
    @lastname = lname
    @items = []
  end

  def add_item(item)
    @item << item
    item.author = self
  end
end