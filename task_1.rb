months = {
  january: 31,
  february: 28,
  march: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}

def puts_months_30(months)
  months.each { |name, count| puts name if count == 30 }
end

puts_months_30(months)
