# https://www.coderbyte.com/editor/guest:Three%20Sum:Ruby
#
# Using the Ruby language, have the function ThreeSum(arr) take the array of integers stored in arr, and determine
# if any three distinct numbers (excluding the first element) in the array can sum up to the first element in
# the array...
#
# Trainers: Andrew

class ThreeSum
  def self.check(nums)
    combinations = Combinator.new(nums.drop(1).uniq).combinations(3)
    combinations.any? { |combination| combination.sum == nums[0] }
  end
end

class Combinator
  def initialize(set)
    @set = set
  end

  def combinations(choose_num)
    res = []
    recurse(res, choose_num, [], @set)
    res
  end

  def recurse(acc, choose_num, so_far, remaining)
    if so_far.length == choose_num
      acc << so_far
      return
    end

    remaining.each_with_index { |x, i| recurse(acc, choose_num, so_far + [x], remaining.drop(i + 1)) }
  end
end
