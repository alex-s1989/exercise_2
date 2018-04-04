array = [0, 1]
count = 0
sum = 1

while sum < 100 do
  array.push(sum)
  count += 1
  sum = array[count] + array[count + 1]
end

puts array
