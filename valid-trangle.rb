#still need pythagorean; any impossible triangle
def valid_triangle?(a, b, c)
  if (a == 0 || b == 0 || c == 0)
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
