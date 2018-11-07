# https://www.codewars.com/kata/sum-of-intervals
# Write a function called sumIntervals/sum_intervals() that accepts an array of intervals, and returns the sum of all the interval lengths. Overlapping intervals should only be counted once.
#
# Intervals
# Intervals are represented by a pair of integers in the form of an array. The first value of the interval will always be less than the second value. Interval example: [1, 5] is an interval from 1 to 5. The length of this interval is 4.
# The sum of the lengths of these intervals is 7. Since [1, 4] and [3, 5] overlap, we can treat the interval as [1, 5], which has a length of 4.


class Intervals
  def initialize(intervals)
    @intervals = intervals
  end

  def unique_length
    @intervals.reduce([]) { |acc, val| acc + [*val[0]...val[1]] }.uniq.count
  end

  def merge
    # iterating through all the elements sorted by starting range
    @intervals.sort_by {|interval| interval.first }.reduce([]) do |acc, interval|
      # merge all subsequent ranges into it while first number is within the current range
      head, last_range = [acc[0..-2], acc.last]
      if last_range.nil?
        head + [interval]
      elsif interval.first >= last_range.first && interval.first <= last_range.last
        head + [[last_range.first, [interval.last, last_range.last].max]]
      else
        head + [last_range, interval]
      end
    end

    # slightly more imperative version

    # # for a particular range
    # result = []
    # # iterating through all the elements sorted by starting range
    # @intervals.sort_by {|interval| interval.first }.each do |interval|
    #   # merge all subsequent ranges into it while first number is within the current range
    #   last_range = result.pop
    #   if last_range.nil?
    #     result << interval
    #   elsif interval.first >= last_range.first && interval.first <= last_range.last
    #     # result << [last_range.first, (interval.last >= last_range.last) ? interval.last : last_range.last]
    #     # [1, 2, 3].max => 3
    #     result << [last_range.first, [interval.last, last_range.last].max]
    #   else
    #     result << last_range << interval
    #   end
    # end
    # result
  end
end
