require './item'
require 'date'

class Game < Item
  def initialize(multiplayer, last_played_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_date = Date.parse(last_played_date)
  end

  private

  def can_be_archived?
    check = (Time.now.year - @last_played_date.year) > 2
    archived && check
  end
end
