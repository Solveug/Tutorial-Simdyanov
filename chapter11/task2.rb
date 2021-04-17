colors = []
user_color = ''

until user_color == 'stop' do
  print 'Введите цвет или stop '
  user_color = gets.strip.downcase

  if user_color == 'stop'
    break
  end

  colors << user_color
end

colors = colors.sort.uniq.reject{ |e| e == '' }
colors.each { |color| puts color }
