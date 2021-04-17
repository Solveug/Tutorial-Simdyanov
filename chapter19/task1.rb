class Vector

  attr_reader :a, :b

  def  initialize a, b
    @a = a # Point.new a[0], a[1]
    @b = b # Point.new b[0], b[1]
  end

  def distance
    @a.distance(@b)
  end

  class Point

    attr_reader :x, :y

    def initialize x, y
      @x = x
      @y = y
    end

    def distance other_point
      Math::sqrt((other_point.x - self.x)**2 + (other_point.y - self.y)**2)
    end
  end
end

# point_a = [0, 0]
# point_b = [1, 1]

# vector = Vector.new point_a, point_b

# pp vector.distance

a = Vector::Point.new 1, 1
b = Vector::Point.new 4, 4

v = Vector.new a, b

pp v.distance
