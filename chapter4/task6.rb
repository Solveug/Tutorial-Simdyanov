a = {x: 3, y: 7}
b = {x: -1, y: 5}

#ac = xb - xa
#bc = yb - ya
#ab = sqrt((ac)**2 + (bc)**2)
#ab = sqrt((xb - xa)**2 + (yb - ya)**2)
#ab = Math::sqrt((-1 - 3)**2 + (5 - 7)**2)

ab = Math::sqrt((b[:x] - a[:x])**2 + (b[:y] - a[:y])**2)

puts "Расстояние между точками A и B равно: #{ab}"
