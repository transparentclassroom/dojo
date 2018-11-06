require_relative '../../spec_helper'
require_relative './sum_of_intervals'

describe SumOfIntervals do
  it 'should sum all unique intervals' do
    expect(SumOfIntervals.new([[1, 2], [6, 10], [11, 15]]).unique_sum()).to eq 9
    expect(SumOfIntervals.new([[1, 4], [7, 10], [3, 5]]).unique_sum()).to eq 7
    expect(SumOfIntervals.new([[1, 5], [10, 20], [1, 6], [16, 19], [5, 11]]).unique_sum()).to eq 19
  end
end

