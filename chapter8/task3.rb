# number = []

# for argv in ARGV
#   argv = argv.to_f

#   if argv % 1 > 0
#     puts "Введите целые числа для сравнения"
#     exit
#   else
#     number << argv.to_i
#   end
# end

# puts "Самое большое - #{number.max}"


number = ARGV.reject{ |elem| elem.to_f % 1 > 0 }.map { |e| e.to_i }
if number.size < 3
  puts "Введите только целые числа"
else
  puts "Самое большое - #{number.max}"
end
