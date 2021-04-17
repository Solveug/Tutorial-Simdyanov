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

file_name = ARGV[0]
file_size = File.new(file_name).size
puts "#{file_size.to_f/1.kilobytes}K"
puts "#{file_size.to_f/1.megabytes}M"
puts "#{file_size.to_f/1.gigabytes}G"
puts "#{file_size.to_f/1.terabytes}T"

puts file_size
