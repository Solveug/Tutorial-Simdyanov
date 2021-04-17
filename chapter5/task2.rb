class Point

attr_accessor :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def distance b
    Math.sqrt((b.x - @x)**2 + (b.y - @y)**2)
  end
end

a = Point.new 3, 6


b = Point.new -1, 5

puts "#{a.distance(b)}"
puts b.distance a
