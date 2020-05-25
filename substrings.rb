# frozen_string_literal: true

dictionary = %w[below be down go going horn how howdy it i low own part partner sit]

def substrings(input, dict)
  hash = {}
  split = input.downcase.split(' ')

  # 1st loop to split inputted strings and iterate them
  split.each do |input_w|
    # 2nd loop to iterate by the dictionary
    dict.each_with_index do |dict_word, dict_i|
      dict_letter_count = 0

      # 3rd loop comparing the split input array to each letter in the dictionary word.
      # If input letter is not equal to dictionary letter, then keep comparing input letter to the first letter of the dictionary word
      substring = input_w.chars.map do |letter|
        if letter != dict_word[dict_letter_count]
          dict_letter_count = 0
          nil
        else
          dict_letter_count += 1
          letter
        end
      end
      substring_joined = substring.join('')

      if (substring_joined == dict[dict_i]) && hash.key?(substring_joined)
        hash[substring_joined] += 1
      elsif substring_joined == dict[dict_i]
        hash[substring_joined] = 1
      end
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
