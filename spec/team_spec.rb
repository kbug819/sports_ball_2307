require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Player do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a Team
  end

  it "has a team roster" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end

  it "counts the players on the roster" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  it ""
end