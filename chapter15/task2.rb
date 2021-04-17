arr = %i(first second third)
hh = arr.to_h{ |i| [i, arr.index(i)+1] }
puts hh
