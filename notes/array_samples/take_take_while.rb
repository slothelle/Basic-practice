a = %w{cat dog banana cheese stick bird fly}
puts a.take(3) # cat dog banana

b = [1, 2, 3, 4, 8, 10, 42]
puts b.take_while { |n| n < 4 }
# 1, 2, 3

puts b.take_while
# #<Enumerator:0x007fc62b8875e0>