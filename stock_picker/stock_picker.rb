def stock_picker(stocks)
  length = stocks.length
  hash = {}
  stocks.each_with_index do |item, index|
    max = stocks[index..length].max
    diff = max - item
    hash[diff] = [index, stocks.index(max)] if diff.positive?
  end 
  hash[hash.keys.max]
end