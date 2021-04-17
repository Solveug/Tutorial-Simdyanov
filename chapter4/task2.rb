week = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье]
# 1 вариант решения
puts *week
puts
# 2 вариант решения
week.each { |i| puts i }
puts
# 3 вариант решения
puts week[0]
puts week[1]
puts week[2]
puts week[3]
puts week[4]
puts week[5]
puts week[6]
