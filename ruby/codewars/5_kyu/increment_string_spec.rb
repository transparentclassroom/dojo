require_relative '../../spec_helper'
require_relative './increment_string'

describe '#increment_string' do
  it 'should work basic case' do
    expect(increment_string('foo')).to eq 'foo1'
    expect(increment_string('foo23')).to eq 'foo24'
  end

  it 'should handle leading zeros' do
    expect(increment_string('foo0023')).to eq 'foo0024'
  end

  it 'should chew up a leading zero when a 10 is reached' do
    expect(increment_string('foo009')).to eq 'foo010'
  end

  it 'should handle numbers before the last set of numbers' do
    expect(increment_string('f00bar1')).to eq 'f00bar2'
    expect(increment_string('f00bar')).to eq 'f00bar1'
  end

  it 'should handle no leading characters' do
    expect(increment_string('1')).to eq '2'
    expect(increment_string('')).to eq '1'
  end
end
