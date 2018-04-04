array = [5]
array.each do |index|
  index += 5
  if index <= 100
    array.push(index)
  end
end
print array
