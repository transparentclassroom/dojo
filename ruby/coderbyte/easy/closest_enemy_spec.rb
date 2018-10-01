require_relative '../../spec_helper'
require_relative './closest_enemy'

describe ClosestEnemy do
  it 'should work in searching to the right' do
    expect(ClosestEnemy.find_enemy([1, 2])).to eq 1
    expect(ClosestEnemy.find_enemy([1, 0, 0, 2])).to eq 3
    expect(ClosestEnemy.find_enemy([0, 1, 0, 0, 2])).to eq 3
  end

  it 'should work in searching to the left' do
    expect(ClosestEnemy.find_enemy([2, 0, 0, 1])).to eq 3
    expect(ClosestEnemy.find_enemy([2, 1])).to eq 1
    expect(ClosestEnemy.find_enemy([2, 0, 0, 2, 0, 0, 1])).to eq 3
  end
end
