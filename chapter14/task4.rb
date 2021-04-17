class Foo

  def initialize hh
    @hh = hh
    @hh.each do |k, v|
      self.class.define_method k do
        v
      end
    end
  end
end

hh = {one: 1, two: 2, three: 3, four: 4}
f = Foo.new hh

puts f.one
puts f.two
puts f.three
puts f.four
