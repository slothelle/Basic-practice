#you can write your own methods
#anytime you have an action you want to perform, define it as a method

#syntax for defining methods
def method_name(parameter list)
	# ...one or more statements...
	return value
end

def add(num1, num2)
	return num1 + num2
end 

puts add(3,4)
puts add(3,4).to_f
puts add(26,0.8)
#modules can be called without defining an instance

def greeting(firstname, lastname)
	fullname = firstname.downcase.capitalize + " " + lastname.downcase.capitalize
	return "Hello " + fullname + " , would you like to learn to program?"
end

puts greeting("Barack", "obama") 
puts greeting("QUEEN", "elizabeth")

#knitting pattern generator
def cast_on(gauge, circ)
	instruct = gauge.to_i * circ.to_i
	return "With a gauge of " + gauge.to_s + " stitches per inch, you should cast on " + instruct.to_s + " stitches."
end

puts cast_on(6,21)	