require 'pry-byebug'

def substrings(string, array)
  string = string.downcase.split(" ")
  array.reduce(Hash.new(0)) do |result, currentWord|
    for i in string
      if i.include? currentWord
        result[currentWord] += 1
      end
    end
     result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
