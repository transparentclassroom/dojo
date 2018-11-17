
# https://www.hackerrank.com/challenges/non-divisible-subset/problem
#
# Given a set of numbers and a divisor, find the largest subset where no two numbers can be summed and
# divisible by the divisor.

def non_divisible_subset(set, divisor)
  # key to the solution is a trick with number theory: the sum of two numbers A, B is divisible by divisor
  # k if A % k + B % k == k. So, for each pair of remainders that add up to the divisor, grab the largest
  # set. For remainders that are exactly half the divisor, you can only grab one, same with numbers that
  # are already evenly divisible (remainder 0).
  remainders = set.map { |x| x % divisor }.group_by { |x| x }
  remainders.reduce(0) do |acc, (r, rs)|
    acc + if divisor / 2.0 == r || r == 0
            1
          elsif remainders[divisor - r].nil? || rs.length > remainders[divisor - r].length
            rs.length
          else
            0
          end
  end
end
