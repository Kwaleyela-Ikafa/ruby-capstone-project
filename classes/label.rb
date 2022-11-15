require_relative 'item'

class Label
  # attr_accessor :genre, :author, :source, :label, :publish_date
  attr_accessor :title, :color

  def initialize(title, color)
    @title = title.to_s
    @color = color.to_s
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.add_label = self
  end
end
