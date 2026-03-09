def substrings(string, dictionary)
  strings = string.downcase.split(' ')
  result = Hash.new(0)

  dictionary.each do |word|
    strings.each do |string|
      if string.include?(word)
        result[word] += 1
      end
    end
  end

  p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)