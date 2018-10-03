require_relative '../../spec_helper'
require_relative './hamming_distance'

describe HammingDistance do
  it 'should calculate the distance' do
    expect(HammingDistance.new(['cat', 'rat']).distance).to eq 1
    expect(HammingDistance.new(['helloworld', 'worldhello']).distance).to eq 8
  end

  it '#recurse_distance should calculate the distance' do
    expect(HammingDistance.new(['cat', 'rat']).distance2).to eq 1
    expect(HammingDistance.new(['helloworld', 'worldhello']).distance2).to eq 8
  end
end
