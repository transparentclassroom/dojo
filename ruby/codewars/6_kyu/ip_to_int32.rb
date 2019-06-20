# https://www.codewars.com/kata/ipv4-to-int32/train/ruby
# Trainer: Andrew
def ip_to_int32(ip)
  Integer("0b#{ip.split('.').map { |octet| "%08b" % octet.to_i }.join('')}")
end
