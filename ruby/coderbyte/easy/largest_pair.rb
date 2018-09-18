#  https://www.coderbyte.com/editor/guest:Largest%20Pair:Ruby
#
# have the function LargestPair(num) take the num parameter being passed and determine the largest double digit number
# within the whole number...
#
# Trainers: Justin, Andrew

class LargestPair
  @@num = 0

  def self.largest_pair(num)
    @@num = num.to_s
    raise ArgumentError, 'The provided number is invalid' unless @@num.length >= 2
    @@num.split('').each.with_index.reduce(0) { |acc, (_, index)| (acc >= get_pair(index)) ? acc : get_pair(index) }
  end

  private

  def self.get_pair(index)
    index < @@num.length - 1 ? (@@num[index] + @@num[index + 1]).to_i : 0
  end
end
