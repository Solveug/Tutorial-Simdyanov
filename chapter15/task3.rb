arr = %w[first second third]
hh = arr.to_h{ |e| [e.to_sym, "#{e.chars.first.capitalize}#{e.chars.last(2).join} (#{arr.index(e)+1})"]}
puts hh
