print "Введите год "
user_year = gets.to_i

def leap? (year)
  year % 4 == 0
end

puts "#{user_year} - это #{leap?(user_year) ? "високосный" : "обычный"} год"
