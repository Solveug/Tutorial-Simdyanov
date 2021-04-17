def fibonacci(n)
   n <= 1 ? n : fibonacci( n - 1 ) + fibonacci( n - 2 )
end

arr =[]
0.upto(10) do |i|
  arr << fibonacci(i)
end
pp arr

# def fibonacccy (n)
#   a = [*0..n]
#   0.upto(n) do |j|
#     a.each_with_index do |v, i|
#       puts a[i] if a[i] == a[i-1] + a[i-2]
#     end
#   end
# end

# puts fibonacci(10)
