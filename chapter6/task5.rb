require 'date'

def max (*val)
  val.max
end

day = ARGV[0].to_i
month = ARGV[1].to_i
year = ARGV[2].to_i

time = Time.now
puts "Ваш возраст: #{time.year - year} лет #{time.month - month} месяцев #{time.day - day} дней"

birth = Time.mktime(year, month, day)

puts "#{(time - birth)/60 /60 /24/365}"

puts (Date.parse('2021.02.08') - Date.parse('1990.10.23')).to_i*24

m = time.month - month + 12
d = max(time.day - day, day - time.day)

puts "Ваш возраст: #{time.year - year} лет #{m} месяцев #{d} дней"


