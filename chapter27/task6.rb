# user_input = ARGV[0]
# file_size = File.size(user_input)

# if user_input.exist? || file_size < 10
#   puts 'Невозможно произвести разбиение'
# else
#   lines = File.readlines(user_input)
#   lines.in_groups(10)
# end


file_name = ARGV[0]
file_exist = File.exist?(file_name)
file_size = File.size(file_name)
if file_exist && file_size > 10
  part_of_file = file_size / 10
  cnt = 1
  for i in 0..file_size
    pp cnt
    parts = IO.binread(file_name, i, part_of_file)
    file = File.new("#{file_name}_#{cnt}", 'w')
    file.write(parts)
    file.close
    i += part_of_file
    cnt += 1
  end
else
  puts "Невозможно произвести разбиение"
end
