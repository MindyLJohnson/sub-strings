def substrings(text, dictionary)
  substring_count = Hash.new(0)

  dictionary.collect do |substring|
    substring_count[substring] += 1 if text.downcase.include? substring.downcase
  end

  return substring_count

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy!", dictionary)