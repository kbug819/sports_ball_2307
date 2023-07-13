class Team
  attr_reader :name, :location, :roster
  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end

  def player_count
    @roster.length
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    @roster.select do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    @roster.select do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    totals = @roster.map do |player|
      player.total_cost
    end
    totals
    sum = 0
    totals.each do |total|
      sum += total
    end
    sum
  end

  def details


end