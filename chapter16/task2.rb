class User
  attr_accessor :name, :patronimyc, :surname, :email

  def initialize
    yield self
  end
end

user1 = User.new do |i|
  i.name = 'Ivan'
  i.patronimyc = 'Ivanovich'
  i.surname = 'Ivanov'
  i.email = 'ghjk@gmail.com'
end

puts user1.name
puts user1.patronimyc
puts user1.surname
puts user1.email
