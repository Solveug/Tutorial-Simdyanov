lines = File.readlines('task3.rb', chomp: true)
minmax = lines.minmax
pp minmax
puts minmax[0].size
puts minmax[1].size
