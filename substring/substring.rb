def substring(string, dictionary)
  string = string.downcase
  dictionary.reduce({}) do |hash, word|
    count = string.scan(/#{word}/).count
    hash[word] = count if count.positive?
    hash
  end
end