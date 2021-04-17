def colors (number)
  case number
  when 1
    'красный'
  when 2
    'оранжевый'
  when 3
    'желтый'
  when 4
    'зеленый'
  when 5
    'голубой'
  when 6
    'синий'
  when 7
    'фиолетовый'
  else
    'nil'
  end
end

print "Введите номер цвета "
number = gets.to_i
puts colors(number)
