print "Введите название товара: "
product = gets.chomp
hash = Hash.new

while product != 'стоп' do
  print "Введите цену за единицу товара: "
  price = gets.chomp.to_f
  
  print "Введите количесто товара: "
  quantity = gets.chomp.to_f
  
  hash[product] = {price: price, quantity: quantity}
  
  print "Введите название товара: "
  product = gets.chomp
end

puts hash
sum = 0

hash.each do |key, value|
  sum_prod = value[:price] * value[:quantity]
  puts "Сумма товаров #{key} равна: #{sum_prod}"
  sum += sum_prod
end
puts "Итоговая сумма всех покупок: #{sum}"
