array_vowels = ['A', 'E', 'I', 'O', 'U']
hash = {}

array_vowels.each do |letter|
  index = ('A'..'Z').to_a.index(letter)
  hash[letter] = index + 1
end

puts hash
