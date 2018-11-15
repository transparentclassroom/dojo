require_relative '../../spec_helper'
require_relative './climbing_leaderboard'

describe 'leaderboard_scores' do
  it 'should work' do
    leaderboard = [100, 100, 50, 40, 40, 20, 10]
    scores = [5, 25, 50, 120]
    expect(leaderboard_scores(leaderboard, scores)).to eq [6, 4, 2, 1]
  end
end
