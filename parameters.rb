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

#determining the return values

#true/false
def divisible_by_three(num)
	num % 3 == 0
end

puts divisible_by_three(9)
puts divisible_by_three(10)

#if/else with return values
def cool_number(num1, num2)
	if num1 * num2 == 42
		return "cool"
	else 
		return "not cool"
	end
end 

puts cool_number(4, 4)
puts cool_number(4, 6)
puts cool_number(7, 6)

#won't ever run because it is after the return 
def do_something2
	value = "This method outputs a string"
	return value
	"This line will never be run"
end

puts do_something2