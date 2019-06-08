# https://www.codewars.com/kata/string-incrementer/train/ruby
#
# Trainer: Andrew
#
# Your job is to write a function which increments a string, to create a new string.
#
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:
#
# foo -> foo1
#
# foobar23 -> foobar24
#
# foo0042 -> foo0043
#
# foo9 -> foo10
#
# foo099 -> foo100
#
# Attention: If the number has leading zeros the amount of digits should be considered.


############
# Original solution
# ##########

# def increment_string(str)
#   regex = if str !~ /^[A-z]/
#             /()(\d*)$/
#           else
#             /(.*[A-z])(\d*)$/
#           end
#   str =~ regex
#   num = ($2.to_i || 0)
#   leading_zeros = $2.length - num.to_s.length - ((num + 1) % 10 == 0 ? 1 : 0)
#   "#{$1}#{leading_zeros.times.map { '0' }.join('')}#{num + 1}"
# end

#################################
# Practicing factory pattern...
#################################
#
# def increment_string(str)
#   str_part, str_num_part = StringIncrementerRegex.for(str).parse
#   num = str_num_part.to_i
#   leading_zeros = str_num_part.length - num.to_s.length - ((num + 1) % 10 == 0 ? 1 : 0)
#   "#{str_part}#{leading_zeros.times.map { '0' }.join('')}#{num + 1}"
# end
#
# class StringIncrementerRegex
#   def self.for(str)
#     if str !~ /^[A-z]/
#       StringIncrementerRegex::NoLeadingLetters.new(str)
#     else
#       StringIncrementerRegex::WithLeadingLetters.new(str)
#     end
#   end
#
#   class NoLeadingLetters
#     def initialize(str)
#       str =~ /()(\d*)$/
#       @part1 = $1
#       @part2 = $2
#     end
#
#     def parse
#       [@part1, @part2]
#     end
#   end
#
#   class WithLeadingLetters
#     def initialize(str)
#       str =~ /(.*[A-z])(\d*)$/
#       @part1 = $1
#       @part2 = $2
#     end
#
#     def parse
#       [@part1, @part2]
#     end
#   end
# end
#

###################
# Practicing OOP...
###################
# 
# def increment_string(str)
#   str_part, str_num_part = StringParser.new(str).parse
#   num = str_num_part.to_i
#   leading_zeros = str_num_part.length - num.to_s.length - ((num + 1) % 10 == 0 ? 1 : 0)
#   "#{str_part}#{leading_zeros.times.map { '0' }.join('')}#{num + 1}"
# end
#
# class StringParser
#   def initialize(str)
#     @str = str
#     @parser = (str !~ /^[A-z]/) ? StringParser::NoLeadingLetters.new : StringParser::WithLeadingLetters.new
#   end
#
#   def parse
#     @parser.parse(@str)
#   end
#
#   class NoLeadingLetters
#     def parse(str)
#       str =~ /()(\d*)$/
#       [$1, $2]
#     end
#   end
#
#   class WithLeadingLetters
#     def parse(str)
#       str =~ /(.*[A-z])(\d*)$/
#       [$1, $2]
#     end
#   end
# end


# Clever solution from Codewars...

def increment_string(str)
  str.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end
