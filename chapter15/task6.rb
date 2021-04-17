eng = %w[red orange yellow green blue indigo violet]
rus = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
hh = {}
1.upto(eng.size) do |i|
  hh[eng[i-1].to_sym] = rus[i-1]
end
puts hh
puts

puts Hash[eng.map(&:to_sym).zip(rus)]
puts

puts Hash[[eng,rus].transpose]
