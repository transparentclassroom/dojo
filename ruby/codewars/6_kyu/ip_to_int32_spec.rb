require_relative '../../spec_helper'
require_relative './ip_to_int32'

describe '#ip_to_int32' do
  it 'should work' do
    expect(ip_to_int32('128.32.10.1')).to eq 2149583361
  end
end
