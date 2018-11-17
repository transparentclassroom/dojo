require_relative '../../spec_helper'
require_relative './non_divisible_subset.rb'

describe '#non_divisible_subset' do
  it 'should handle basic case for non-zero remainders and no pairs' do
    expect(non_divisible_subset([1, 7, 2, 4], 3)).to eq 3
  end
  it 'should get the largest set of remainder pairs' do
    expect(non_divisible_subset([1, 1, 1, 4, 4], 5)).to eq 3 # [1, 1, 1]
    expect(non_divisible_subset([1, 1, 1, 2, 4, 4], 5)).to eq 4 # [1, 1, 1, 2]
  end
  it 'should only grab one of a set of remainders that are half the divisor' do
    expect(non_divisible_subset([3, 3, 4], 6)).to eq 2 # [3, 4]
  end
  it 'should handle remainders that are 0 by only choosing one' do
    expect(non_divisible_subset([6, 12, 5], 6)).to eq 2 # [6, 5]
  end
end
