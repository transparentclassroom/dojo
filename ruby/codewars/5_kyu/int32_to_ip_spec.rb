require_relative '../../spec_helper'
require_relative './int32_to_ip'

describe '#int32_to_ip' do
  it 'should work' do
    expect(int32_to_ip(2149583361)).to eq '128.32.10.1'
    expect(int32_to_ip(0)).to eq '0.0.0.0'
  end
end
