print "Введите число месяца "
day = gets.chomp.to_i

print "Введите число, обозначающее порядковый номер месяца в году "
month = gets.chomp.to_i

print "Введите год "
year = gets.chomp.to_i

days = [ 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

# проверяем високосный ли год

leap_year = ( year % 4 == 0 && year % 100 != 0 ) || ( year % 400 == 0)
days[2] = 29 if leap_year

sum = days[0..month-1].sum

puts "Порядковый номер дня в году:  #{sum + day}"
