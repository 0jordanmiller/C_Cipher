dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(_input, dict)
hash = {}
    _input.downcase.split.each do |input|
        dict.each do |word| 
            if input.match(word) and hash.has_key? word
             hash[word] += 1
            elsif input.match(word)
             hash[word] = 1
            end
         end
    end
puts hash

end

substrings('Howdy going go', dictionary)