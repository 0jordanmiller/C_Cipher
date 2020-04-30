# frozen_string_literal: true

def cipher(string, _shift)
    split = string.split('')
    convert_int = split.map do |letter|
      if letter.ord == 32
      elsif letter == letter.upcase && (letter.ord - _shift) < 65
        (letter.ord + 26 - _shift).chr
      elsif letter == letter.downcase && (letter.ord - _shift) < 97
        (letter.ord + 26 - _shift).chr
      else
        (letter.ord - _shift).chr
      end
    end
    puts convert_int
  end
  
  # cipher('Barrelz at home', 4)
  
  cipher('Hello my  name is Jordan', 2)