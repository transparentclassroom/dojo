# https://www.coderbyte.com/editor/guest:Hamming%20Distance:Ruby
#
# Using the Ruby language, have the function HammingDistance(strArr) take the array of strings stored in strArr,
# which will only contain two strings of equal length and return the Hamming distance between them...
#
# Sample Test Cases
# Input:"10011", "10100"
# Output:3
#
# Input:"helloworld", "worldhello"
# Output:8
#
# Trainers: Justin, Andrew

class HammingDistance
  def initialize(string_array)
    @string_array = string_array
  end

  def distance
    string1, string2 = @string_array
    @string_array[0].split('').each_with_index.reduce(0) { |acc, (_, i)| (string1[i] == string2[i]) ? acc : acc + 1 }
  end

  def distance2
    recurse_distance(@string_array[0], @string_array[1])
  end

  def recurse_distance(string1, string2)
    return 0 if string1.length == 0
    (string1[0] == string2[0] ? 0 : 1) + recurse_distance(string1[1..-1], string2[1..-1])
  end

  # def distance2
  #   recurse_distance(@string_array[0], @string_array[1], 0)
  # end
  #
  # def recurse_distance(string1, string2, distance)
  #   return distance if string1.length == 0
  #   new_distance = (string1[0] == string2[0]) ? distance : distance+1
  #   recurse_distance(string1[1..-1], string2[1..-1], new_distance)
  # end
end
