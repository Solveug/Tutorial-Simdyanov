def cel2far (cel)
  (cel * 9/5) + 32
end

def far2cel (far)
  (far - 32) * 5 / 9
end

loop do
  print "Сколько градусов будем переводить? "
  user_input = gets.strip
  break if user_input == ''
  user_input = user_input.to_f
  print "Что будем переводить? (C / F): "
  user_choice = gets.strip.capitalize
  if user_choice == 'C'
    puts '%.2f' % cel2far(user_input)
  else
    puts '%.2f' % far2cel(user_input)
  end
end
