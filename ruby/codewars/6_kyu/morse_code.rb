# https://www.codewars.com/kata/decode-the-morse-code/train/ruby

def decode_morse(code)
  code.strip.split('   ')
    .map { |morse_word| morse_word.split(' ').map { |w| MORSE_CODE[w] }.join('') }
    .join(' ')
end
