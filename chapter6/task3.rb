user_input = ARGV[0].to_i

factorial = 1

user_input.downto(1) do |v|
  factorial *= v
end

puts "Вы ввели #{user_input}, факториал #{user_input} = #{factorial}"
