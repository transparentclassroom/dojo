require_relative '../../spec_helper'
require_relative './largest_pair'

describe LargestPair do
  it 'should identify 2-digit number as the largest double-digit number in a number' do
    expect(LargestPair.largest_pair(11)).to eq(11)
  end

  it 'should get the largest pair in a simple number' do
    expect(LargestPair.largest_pair(12345)).to eq(45)
  end

  it 'should return an error prompt if the provided number is only one-digit or nil' do
    expect { LargestPair.largest_pair(2) }.to raise_error(ArgumentError, 'The provided number is invalid')
    expect { LargestPair.largest_pair(nil) }.to raise_error(ArgumentError, 'The provided number is invalid')
  end
end
