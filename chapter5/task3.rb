$LOAD_PATH.each_with_index do |v, i|
  puts "#{i + 1}. #{v}"
end
puts "Всего элементов в массиве: #{$LOAD_PATH.count}"
