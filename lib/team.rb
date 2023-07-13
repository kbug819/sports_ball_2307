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
    details = {
      "total_value" => total_value,
      "player_count" => player_count
    }
  end

  def average_cost_of_player
    sum = total_value / player_count 
    formatting = sum.to_s.chars.to_a.reverse.each_slice(3)
      total = formatting.map do |num|
        num.join
      end
      new = total.join(',').reverse
    "$#{new}"
  end

  def players_by_last_name #Couldn't finish within time
   names = []
    @roster.each do |player|
    names << player.last_name.to_s 
    end
    names.sort
    
  end


end