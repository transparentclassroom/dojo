require_relative '../../spec_helper'
require_relative './incrementer'

describe '#incrementer' do
  it 'should work' do
    expect(incrementer([1, 2, 3])).to eq [2, 4, 6]
  end

  it 'should only retain the last digit' do
    expect(incrementer([4, 6, 9, 1, 3])).to eq [5, 8, 2, 5, 8]
  end

  it 'should return empty array when no numbers present' do
    expect(incrementer([])).to eq []
  end
end
