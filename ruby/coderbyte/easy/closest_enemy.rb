# https://www.coderbyte.com/editor/guest:Closest%20Enemy:Ruby
#
# Using the Ruby language, have the function ClosestEnemy(arr) take the array of numbers stored in arr and from the
# position in the array where a 1 is, return the number of spaces either left or right you must move to reach an
# enemy which is represented by a 2...
#
# Ex:
#
# Input:1, 0, 0, 0, 2, 2, 2
# Output:4
#
# Input:2, 0, 0, 0, 2, 2, 1, 0
# Output:1
#
# Trainers: Andrew, Justin

PositiveInfinity = +1.0/0.0

class ClosestEnemy
  def self.find_enemy(arr)
    index_of_subject = arr.find_index(1)
    enemy_to_the_left = arr[0..index_of_subject].reverse.find_index(2) || PositiveInfinity
    enemy_to_the_right = arr[index_of_subject..-1].find_index(2) || PositiveInfinity
    [enemy_to_the_left, enemy_to_the_right].min
  end
end
