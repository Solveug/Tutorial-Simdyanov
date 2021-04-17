numbers = Array.new(10) { rand(99) }

puts numbers.join(', ')
puts "Максимальное - #{numbers.max}"
puts "Минимальное - #{numbers.min}"
