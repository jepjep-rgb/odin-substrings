def substrings(string, dictionary)
  substring = []
  dictionary.each do |word|
    regexp = Regexp.new(word.downcase)
    match_count = string.downcase.scan(regexp).length
    if match_count > 0
      substring.push([word.downcase, match_count])
    end
  end
  substring.to_h
end
