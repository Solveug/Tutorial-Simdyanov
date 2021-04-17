class Hello

  def initialize params
    @params = params
  end

  def say
    "Hello #{@params}!"
  end

  def to_s
    say
  end
end

h = Hello.new('world')

puts h
puts h.say
