print 'Введите число до 10: '
user_input = gets.to_i
left = [*1..(user_input - 1)]
right = left.reverse
final = (left << user_input) + right
puts final.join(', ')
