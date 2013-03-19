#syntax
#some_object.method_name(argument list)

#if there are no arguments, then argument list is omitted 
#some_object.method_name

#method chaining
#calling more than one method onto an object 

#this doesn't work, because upcase doesn't permanently alter
puts my_string = "i like programming"
puts my_string.upcase
puts my_string.reverse

#you get around this by adding another variable into the mix
puts capital_string = my_string.upcase
puts capital_string.reverse

#or you can chain the methods together
#this is the best and most concise way
puts my_string.upcase.reverse

#syntactic sugar
#short hand notation
puts 5 + 7
#instead of long hand notation 
puts 5.+(7)
#syntactic sugar maintains the order of operations, long hand doesn't
#always write code using syntactic sugar