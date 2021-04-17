sum = []
a = [1, 2, 3, 4, 5].reduce(0) { |m, num| sum << num if num % 2 != 0 } #=> [1, 3, 5]
pp sum
