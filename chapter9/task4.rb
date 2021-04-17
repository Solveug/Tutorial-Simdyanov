class User

  def initialize params
    @name = params[:name] || 'не задано'
    @patronimyc = params[:patronimyc] || 'не задано'
    @surname = params[:surname] || 'на задано'
  end

  def to_s
    "Фамилия - #{@surname} Имя - #{@name} Отчетство - #{@patronimyc}"
  end
end

users = []
loop do
  print 'Введите фамилию имя и отчетсво пользователя: '
  user_input = gets.strip
  break if user_input == ''
  user_input = user_input.split(' ').map { |e| e.capitalize }
  users << User.new(name:user_input[1], patronimyc:user_input[2], surname:user_input[0])
end

puts users
