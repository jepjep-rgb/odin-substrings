def substrings(string, dictionary)
  dictionary.each do |word|
    regexp = Regexp.new(word)
    match_count = string.scan(regexp).length
  end
end
