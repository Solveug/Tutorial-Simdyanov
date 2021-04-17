require 'matrix'
print 'Введите размер матрицы: '
user_input = gets.to_i
m = Matrix.build(user_input) { rand(0..10) }
pp m

def sum_diagonal matr, size
  sum = 0
  for i in 0..(size - 1)
    sum += matr[i,i]
  end
  sum
end

puts sum_diagonal m, user_input
