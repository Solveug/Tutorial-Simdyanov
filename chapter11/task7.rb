month = %w[январь февраль март апрель май июнь июль август сентябрь октябрь ноябрь декабрь]
pp month = Array.new(10000) { ('a'..'z').to_a.sample(rand(1..10)).join }
sort_month = month.sort_by(&:length)
puts sort_month.first
puts sort_month.last
# отсортировать можно через метод sort_by
# puts month.sort { |a, b| a.size <=> b.size }.last
