colors = {
      red: 'красный',
      orange: 'оранжевый',
      yellow: 'желтый',
      green: 'зеленый',
      blue: 'голубой',
      indigo: 'синий',
      violet: 'фиолетовый'
    }

rus_colors = []
eng_colors = []

# первый вариант решения
# colors.each_value {|v| rus_colors << v }
# colors.each_key {|k| eng_colors << k}

# второй вариант решения
# rus_colors = colors.values
# eng_colors = colors.keys

# третий вариант решения
colors.each_pair do |k, v|
  rus_colors << v
  eng_colors << k
end

# первый вариант решения
rev_colors = colors.to_h { |k, v| [v, k] }

# второй вариант решения
# rev_colors = colors.invert

puts rus_colors
puts eng_colors
puts rev_colors
