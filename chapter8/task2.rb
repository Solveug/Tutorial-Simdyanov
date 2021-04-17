def week (number)
  case number
  when 1
  'понедельник'
  when 2
  'вторник'
  when 3
  'среда'
  when 4
  'четверг'
  when 5
  'пятница'
  when 6
  'суббота'
  when 7
  'воскресенье'
  else
  nil
  end
end

print "Введите номер дня недели "
number = gets.to_i
puts "#{number} - #{week(number)}"
