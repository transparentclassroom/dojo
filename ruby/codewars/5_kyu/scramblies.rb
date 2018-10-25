class Scramblies
  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def check_chars
    @string1.split('').sort.join == @string2.split('').sort.join
  end
end
