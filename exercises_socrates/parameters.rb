#example from dbc socrates
def divisble_by_three(num)
	num % 3 == 0
end

puts "Enter your favorite number, please."
num = gets.chomp
puts "Is the number #{num} divisible by three? #{divisble_by_three(num)}."

#my own method for a knitting pattern!
def cast_on(gauge_inch, circumference)
	if gauge_inch * circumference % 4 == 0
		return "Hooray, have a multiple of 4."
	else 
		return "Sorry, you need a multiple of 4."
	end
end

puts cast_on(6, 24)