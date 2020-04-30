# frozen_string_literal: true
dictionary = %w[low down ow go going horn how howdy it i in own below part partner sit brown]

def substrings(input, dict)
  hash = {}
  split = input.downcase.split('')
  
# Outer loop for each word in dictionary array


dict.each_with_index do |dict_word, dict_i|
# set dictionary letter count to 0 on each loop through
  dict_letter_count = 0

# Inner loop comparing the split input array to each letter in the dictionary word. 
# If input letter is not equal to dictionary letter, then keep comparing input letter to the first letter of the dictionary word
substring = split.map.with_index do |letter, i|
    if letter != dict_word[dict_letter_count]
      dict_letter_count = 0
      nil
    elsif letter == dict_word[dict_letter_count]
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
puts hash

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
