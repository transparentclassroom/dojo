require_relative '../../spec_helper'
require_relative './best_sum'

describe BestSum do
  it 'should choose the integers that come closest but do not exceed the upper limit' do
    expect(BestSum.new.get_best_sum(10, 1, [10, 11, 1, 8])).to eq [10]
    expect(BestSum.new.get_best_sum(10, 2, [10, 11, 1, 8])).to eq [1, 8]
  end

end

describe Array do
  describe '#get_combinations' do
    it 'should work' do
      expect([1, 2, 3, 4].choose(2)).to eq [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
    end
  end
end
