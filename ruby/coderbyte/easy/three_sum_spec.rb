require_relative '../../spec_helper'
require_relative './three_sum.rb'

describe ThreeSum do
  it 'should work' do
    expect(ThreeSum.check([10, 2, 3, 1, 5, 3, 1, 4, -4, -3, -2])).to eq true
    expect(ThreeSum.check([12, 3, 1, -5, -4, 7])).to eq false
  end
end

describe Combinator do
  describe '#combinator' do
    it 'should provide combinations' do
      combinator = Combinator.new([1, 2, 3])
      expect(combinator.combinations(1)).to eq [[1], [2], [3]]
      expect(combinator.combinations(2)).to eq [[1, 2], [1, 3], [2, 3]]
    end

    it 'should handle more complex case' do
      combinator = Combinator.new([1, 2, 3, 4])
      expect(combinator.combinations(2)).to eq [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
    end
  end
end
