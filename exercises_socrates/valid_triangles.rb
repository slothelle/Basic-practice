#Exercise: Triangle side lengths
#Write a method valid_triangle? which takes as its input three non-negative numbers. It should return true if the three numbers could form the side lengths of a triangle and false otherwise.
#
#The arguments don't correspond to specific sides. Don't worry about handling negative inputs — garbage in, garbage out.
#
def valid_triangle?(a, b, c)
  if (a == 0 || b == 0 || c == 0)
    return false
  elsif ((a + b <= c ) || (a + c <= b) || (b + c <= a))
    return false
  elsif ((a == b) && (a == c) && (b == c))
    return true
  elsif ((a == b) || (a == c) || (b == c))
    return true
  elsif ((a+2*b+2*c) && (2*a+b+2*c) && (2*a+2*b+3*c))
    return true
  else
    return false
  end
end
#had a really hard time with this even after brushing up on geometry
#definitely not my strong suit, and I know this code could be cleaner
#can't tell if the code isn't clean because I don't understand the math, or because I don't get the code
#itemized every option in above code: 0 length sides, equilateral, right, impossible, triples