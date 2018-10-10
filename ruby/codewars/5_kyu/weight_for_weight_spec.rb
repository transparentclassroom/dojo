require_relative '../../spec_helper'
require_relative './weight_for_weight'

describe WeightForWeight do
  it 'should order weights by "weight"' do
    expect(WeightForWeight.new('20 40 100').sort_by_weight).to eq '100 20 40'
  end

  it 'should handle edge cases with input' do
    expect(WeightForWeight.new('  20 40   100 ').sort_by_weight).to eq '100 20 40'
  end

  it 'should sort by string when weights are equal' do
    expect(WeightForWeight.new('90 100 180').sort_by_weight).to eq '100 180 90'
  end

  describe '#calc_weight' do
    it 'should calculate the weight' do
      expect(WeightForWeight.new('').calc_weight('20')).to eq 2
      expect(WeightForWeight.new('').calc_weight('24')).to eq 6
      expect(WeightForWeight.new('').calc_weight('106')).to eq 7
    end
  end
end
