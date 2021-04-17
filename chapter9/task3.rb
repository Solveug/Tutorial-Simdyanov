colors = {
  1 => 'red',
  2 => 'orange',
  3 => 'yellow',
  4 => 'green',
  5 => 'blue',
  6 => 'indigo',
  7 => 'purple'
}
colors.default = 'Цвет не найден'

print 'Введите номер цвета: '
user_color = gets.to_i

puts "#{user_color} - #{colors[user_color]}"
