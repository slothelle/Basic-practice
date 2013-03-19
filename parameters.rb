#when defining a method, we provide an optional parameter list
#this is a list of values available to the method
#parameters are local variables that can be used by the method
#parameters = local scope in Ruby

#when we call a method, we pass arguments that are assigned to each parameter
#if you have 3 paramters, you have 3 arguments 

def do_something(first_name, num, age)
	"You entered name: #{first_name}, num: #{num}, age: #{age}."
end

#there are two different ways to call the method with arguments
#this one is prettiest
puts do_something("Alex", 42, 12)

#but this one will do in a pinch
first_name = "Ken"
num = 15
puts do_something(first_name, num, 21)