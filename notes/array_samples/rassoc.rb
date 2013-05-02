a = [1, 2, 3]
b = %w{ bat cat rat }
c = [4, 5, 6]
d = %w{ snow rain sleet }
e = [a, b, c, d]

puts e.rassoc(4).inspect