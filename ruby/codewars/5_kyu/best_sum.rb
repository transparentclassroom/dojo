# http://www.codewars.com/kata/best-travel
#
# Given a list of integers, an upper-limit, and 'n' number of integers to sum, return an array containing the 'n'
# integers that when summed come closest to -- but without exceeding -- the upper-limit
#
# Trainers: Justin, Andrew
class Array
  def choose(limit)
    get_combinations([], [], limit, self)
  end

  private

  def get_combinations(combinations, acc, limit, nums)
    # note that we're mutating combinations and returning that work at the end
    return combinations << acc if acc.length == limit
    return if nums.length == 0

    nums.each_with_index do |num, i|
      get_combinations(combinations, acc + [num], limit, nums[i + 1..-1])
    end

    combinations
  end
end

class BestSum
  def get_best_sum(limit, choose, nums)
    nums.choose(choose)
      .sort_by { |arr| arr.reduce(:+) }
      .reject { |arr| arr.reduce(:+) > limit }
      .last
  end
end
