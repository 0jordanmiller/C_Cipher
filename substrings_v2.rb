# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(user_input, dict)
  hash = {}
  user_input.downcase.split.each do |input|
    dict.each do |word|
      if input.match(word) && hash.key?(word)
        hash[word] += 1
      elsif input.match(word)
        hash[word] = 1
      end
    end
  end
  puts hash
end

substrings('Howdy going go', dictionary)
