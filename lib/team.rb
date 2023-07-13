class Team
  attr_reader :name, :location, :roster
  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end

  def player_count
    0
  end

end