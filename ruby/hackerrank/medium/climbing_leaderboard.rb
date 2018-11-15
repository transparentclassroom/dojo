# https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem
#
# Given an array of leaderboard scores, and an array of the scores of a person, calculate their rank on the
# leaderboard for each of the given scores.

# This one is more efficient because it doesn't start re-searching from the first position each time.
# It's also more difficult to understand.
def leaderboard_scores_efficient(scores, alice)
  sorted_scores = scores.sort.uniq
  last_index = 0
  alice.map do |score|
    last_index += sorted_scores[last_index..-1].index { |s| score < s } || sorted_scores[last_index..-1].length
    sorted_scores.length - last_index + 1
  end
end

# Gets the job done and is easy to understand, but takes long for really large leaderboards.
def leaderboard_scores_simple(scores, alice)
  sorted_scores = scores.sort.reverse.uniq
  alice.map do |score|
    (sorted_scores.index { |s| score >= s } || sorted_scores.length) + 1
  end
end
