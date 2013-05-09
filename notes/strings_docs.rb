# http://ruby-doc.org/core-2.0/String.html

# always using to puts to display result in console

# str % arg -> new_str
# Uses str as a format specification, returns the result of applying it to arg.
# If format specification contains 1+ substitutions, arg must be an array or hash.

str = 2

puts "%cats" % str 
# ats 

#

# str * integer -> new_str
# Returns a new string containing integer copies of the receiver. Integer must be >= 0.

puts "Hello little lady" * 3
# Hello little ladyHello little ladyHello little lady

#

# 