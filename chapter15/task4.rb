str = "Возьмите текст этого задания и извлеките из него все слова, количество символов в которых больше 5. Подсчитайте количество слов и выведите их в алфавитном порядке."
arr = str.downcase.gsub(/[.,]/,'').split.select{ |el| el.size > 5 }.sort
arr.each_with_index{|el, i| puts "#{i+1} - #{el}"}
puts "Всего слов: #{arr.size}"
