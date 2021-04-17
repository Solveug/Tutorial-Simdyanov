class Integer

  def minutes
    self * 60
  end

  def hours
    self * 60.minutes
  end

  def days
    self * 24.hours
  end
end

puts 5.minutes
puts 2.hours
puts 1.days
