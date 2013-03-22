#important to do it in this order because 100 years also have to be divisible by 400
#
def leap_year?(year)
  if year % 400 == 0
    return true
  elsif year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  else
    return false
  end
end
