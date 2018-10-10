# http://www.codewars.com/kata/weight-for-weight/train/ruby
#
# For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99. Given a string
# with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?
#
# Example:
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"
#
# When two numbers have the same "weight", let us class them as if they were strings and not numbers: 100 is before 180
# because its "weight" (1) is less than the one of 180 (9) and 180 is before 90 since, having the same "weight" (9) it
# comes before as a string.
#
# All numbers in the list are positive numbers and the list can be empty.
#
# Notes
# it may happen that the input string have leading, trailing whitespaces and more than a unique whitespace between two
# consecutive numbers
# Don't modify the input
# For C: The result is freed.
#
# Trainers: Justin, Andrew

class WeightForWeight
  def initialize(weights)
    @weights = weights.split(' ')
  end

  def sort_by_weight
    @weights.map { |w| { weight: calc_weight(w), num: w } }
      .sort { |a, b| a[:weight] == b[:weight] ? a[:num] <=> b[:num] : a[:weight] <=> b[:weight] }
      .map { |o| o[:num] }
      .join(' ')
  end

  def calc_weight(w)
    w.split('').map(&:to_i).reduce(:+)
  end

  # Based on solutions
  def sort_by_weight_alternate
    @weights
      .sort_by { |w| [calc_weight(w), w] }
      .join(' ')
  end
end

