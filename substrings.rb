def substrings(string, dictionary)
  substring = []
  dictionary.each do |word|
    regexp = Regexp.new(word)
    match_count = string.scan(regexp).length
    if match_count > 0
      substring.push([word, match_count])
    end
  end
  substring.to_h
end
