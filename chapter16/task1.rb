class Integer

  def kilobytes
    self * 1024
  end

  def megabytes
    self.kilobytes * 1024
  end

  def gigabytes
    self.megabytes * 1024
  end

  def terabytes
    self.gigabytes * 1024
  end
end

puts 5.kilobytes
puts 2.megabytes
puts 3.gigabytes
puts 4.terabytes
