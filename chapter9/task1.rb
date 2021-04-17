params = ARGV.map { |e| e.to_f }

def sum (*pr)
  pr.sum
end

puts "Сумма всех введенных чисел: #{sum(*params)}"
