require_relative '../../spec_helper'
require_relative './street_fighter_selection'

describe '#street_fighter_selection' do
  fighters = [
    ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
    ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
  ]

  it 'should work' do
    initial_position = [0, 0]
    moves = ['right', 'down', 'left', 'left', 'left', 'left', 'right']
    expect(street_fighter_selection(fighters, initial_position, moves))
      .to eq ['E.Honda', 'Chun Li', 'Ken', 'M.Bison', 'Sagat', 'Dhalsim', 'Sagat']
  end

  it 'should cycle horizontally' do
    initial_position = [0, 0]
    moves = ['left', 'right', 'left', 'right']
    expect(street_fighter_selection(fighters, initial_position, moves))
      .to eq ['Vega', 'Ryu', 'Vega', 'Ryu']
  end

  it 'should not cycle vertically' do
    initial_position = [0, 0]
    moves = ['down', 'down']
    expect(street_fighter_selection(fighters, initial_position, moves))
      .to eq ['Ken', 'Ken']
  end
end
