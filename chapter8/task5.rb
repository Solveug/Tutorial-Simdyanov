user_input = ARGV[0].to_f

if user_input % 1 > 0
  puts "Вы ввели вещественное число"
else
  puts "Вы ввели целое число"
end

