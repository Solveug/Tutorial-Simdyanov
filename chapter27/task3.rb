size = ARGV[0]
file_name = ARGV[1]
if File.exist?(file_name)
  puts "Такой файл есть"
else
  new_file = File.new(file_name, 'w')
  new_file.print 'a' * size.to_i
  puts new_file.size
  new_file.close
end
