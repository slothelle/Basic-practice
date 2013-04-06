first, second, third = ARGV
# Argument variable
# Standard name 
# It's in all caps because it's a constant, 
# you should not change the value once it is assigned

# Line 1 unpacks ARGV and assigns the arguments
# instead of holding them
# $0 is a special variable, we don't have to unpack it

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second varaible is #{second}"
puts "Your third variable is #{third}"