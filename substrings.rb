# frozen_string_literal: true

# dictionary = %w[down go going horn how howdy it i low own below part partner sit brown]
dictionary = %w[ow low below]
# dictionary = %w[below low]




def substrings(input, dict)
  hash = {}
  split = input.split('')
  dict_letter_count = 0
  
dict.each_with_index do |dict_word, dict_i|



  substring = split.map do |letter|
      puts "letter input: #{letter} letter dict: #{dict[dict_i][dict_letter_count]}  "
    if letter != dict[dict_i][dict_letter_count]
      dict_letter_count = 0
      nil
    elsif letter == dict[dict_i][dict_letter_count]
      dict_letter_count += 1
      letter
    end

  end
  substring_joined = substring.join('')

  # add substring to hash
if substring_joined == dict[dict_i]
  hash[substring_joined] = 1
end
end

end

substrings('below', dictionary)

#
# The program starts with the first letter of the input. It checks against the first letter of the first word in dictionary until end of the string
#
# sample for input below and dict low
# b != l
# e != l
# l == l
# o == o
# w == w
#
#
#
#
# sample for input part and  dict partner
#
# p == p
# a == a
# r == r
# t == t
# ^^stops here
#
