class Item
  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = Time.now
    @archived = false
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_source(source)
    @source = source
    source.items << self unless source.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def move_to_archive
    @archived = can_be_archieved?
  end

  private

  def can_be_archieved?
    time = Time.new
    year = time.year - publish_date.year

    true unless year < 10
  end
end
