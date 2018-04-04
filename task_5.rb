print "Введите число месяца "
day = gets.chomp.to_i

print "Введите число, обозначающее порядковый номер месяца в году "
month = gets.chomp.to_i

print "Введите год "
year = gets.chomp.to_i

# проверяем високосный ли год
if year % 400 == 0
  days_in_febr = 29

elsif year % 100 == 0
  days_in_febr = 28

elsif year % 4 == 0
  days_in_febr = 29

else
  days_in_febr = 28
end

if days_in_febr == 28
  puts "год невисокосный"
else
  puts "год високосный"
end

hash_months = {
  1 => 31,
  2 => days_in_febr,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31
}

sum_days = 0

hash_months.each do |key, value|
  if key < month
    sum_days += value
  end
end

puts "Порядковый номер дня в году:  #{sum_days + day}"
