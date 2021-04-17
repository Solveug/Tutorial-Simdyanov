r = 1...10
rr = r.to_a.each_slice(3).map { |e| e }
pp rr
