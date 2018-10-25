require_relative '../../spec_helper'
require_relative './scramblies'

describe Scramblies do
  it 'should return true if two strings contain the same characters' do
    expect(Scramblies.new('foo', 'foo').check_chars).to eq true
    expect(Scramblies.new('foo', 'ofo').check_chars).to eq true
    expect(Scramblies.new('andrew', 'rednaw').check_chars).to eq true
    expect(Scramblies.new('aaabbbbc', 'cbababab').check_chars).to eq true
  end
end
