# print_triangle(rows) prints out a right triangle of +rows+ rows consisting 
# of * characters
#
# +rows+ is an integer
#
# For example, print_triangle(4) should print out the following: 
# *
# **
# ***
# ****

def print_triangle(rows)
  stars = 1
  while stars <= rows && rows > 0
    puts "*" * stars
    stars += 1
  end 
end

print_triangle(5)
