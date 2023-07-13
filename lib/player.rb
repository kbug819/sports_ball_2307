class Player
  attr_reader :name, :cost, :contract, :nickname
  def initialize(name, cost, contract)
    @name = name
    @cost = cost
    @contract = contract
    @nickname = nickname
  end
  
  def first_name
    @name.split.first
  end

  def last_name
    @name.split.last
  end

  def monthly_cost
    @cost
  end

  def contract_length
    @contract
  end

  def total_cost
    @cost * @contract
  end

  def set_nickname!(name)
    @nickname = name
  end


end