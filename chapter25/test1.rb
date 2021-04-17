Point = Struct.new(:x, :y, keyword_init: true)

point = Point.new x: 3, y: 4
snd = Point.new y: 2, x: []

pp snd

puts point.x = 1
puts point['x'] = 2
puts point[:x] = 3

p point.members

point.each{|i| puts i}
point.each_pair{|k, v| puts "#{k} => #{v}" }
puts
p point.to_a
p point.to_h
puts
p point.values_at(1..2)
p point.values(0, 1)
