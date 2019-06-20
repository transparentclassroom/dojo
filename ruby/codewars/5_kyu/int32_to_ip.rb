# https://www.codewars.com/kata/int32-to-ipv4/train/ruby
# Trainer: Andrew

def int32_to_ip(int32)
  binary = ''
  left, remainder = int32.divmod(2)
  while left >= 1
    binary += remainder.to_s
    left, remainder = left.divmod(2)
  end
  binary += remainder.to_s
  ("%032d" % binary.reverse).split('').each_slice(8).to_a.map{ |x| Integer("0b#{x.join('')}") }.join('.')
end

# Better versions:
#
# def int32_to_ip(int32)
#   [24, 16, 8, 0].collect {|b| (int32 >> b) & 255}.join('.')
# end
#
# require 'ipaddr'
# def int32_to_ip(int32)
#  IPAddr.new( int32 ,Socket::AF_INET).to_s
# end
#
# def int32_to_ip(int32)
#   ("%032b" % int32).scan(/.{8}/).map { |octet| octet.to_i(2) }.join('.')
# end

