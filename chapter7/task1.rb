print "Введите число "
a = gets.to_i
print "Введите степень "
b = gets.to_i
c = 0
b.times do |e|
  c = a * a
end
puts "Результат: #{c}"
puts
d = a << b
puts d
