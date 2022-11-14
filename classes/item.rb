class Item
  # DateTime.now.strftime "%d/%m/%Y"
  def initialize(genre, author, source, label, publish_date: Time.now)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    # can_be_archieved? ? @archived = true : false
    @archived = can_be_archieved?
  end

  private

  def can_be_archieved?
    time = Time.new
    year = time.year - publish_date.year

    true unless year < 10
  end
end
