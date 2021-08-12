def substrings(text, dictionary)
  substring_count = Hash.new(0)

  dictionary.collect do |substring|
    match_count = text.downcase.scan(substring.downcase).length
    substring_count[substring] += match_count if match_count > 0
  end

  return substring_count

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)