class Source
  attr_accessor :name, :items

  def initialize(name)
    super()
    @name = name.to_s
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.add_source(self)
  end
end
