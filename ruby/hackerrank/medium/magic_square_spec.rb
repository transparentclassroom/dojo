require_relative '../../spec_helper'
require_relative './magic_square.rb'

describe 'forming_magic_square' do
  it 'should work' do
    square = [[4, 8, 2],
              [4, 5, 7],
              [6, 1, 6]]
    expect(forming_magic_square(square)).to eq 4
  end
end
