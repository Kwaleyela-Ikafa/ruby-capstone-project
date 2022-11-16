require_relative 'item'

class MusicAlbum < Item
  attr_accessor :name, :on_spotify, :archived, :publish_date, :genre

  def initialize(publish_date, on_spotify, name, genre)
    super(publish_date)
    @on_spotify = on_spotify
    @name = name
    @genre = genre
  end

  def can_be_archieved?
    archived && on_spotify
  end
end
