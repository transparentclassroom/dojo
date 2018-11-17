
def non_divisible_subset(set, divisor)
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
