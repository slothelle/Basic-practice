def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, num| sum += (num*num*num)}
end

puts sum_of_cubes(1, 3)
puts sum_of_cubes(2, 10)