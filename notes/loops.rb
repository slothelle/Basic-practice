#If we know how many times we want to do something, 
#we can use Integer#times method to ask the computer to do it that many times
#This is great, but what if you don't know how many times you want to do it?
#(getting head of myself here...)
#
#This will print "Hello!" 10x
10.times do
  puts "Hello!"
end
#
#We call the code between do and end a code block (or block)
#Code inside of a block can see variables defined outside of itself
#which means we can use variables to determine what to print
#Any Integer works for the times method, so if we have a variables
#that contains (a) an Integer or (b) a method that returns an Integer
#then we can use that to control the number of iterations.
#Blammo!
#
#This will print the string 5x
iterations = 5
string = "All this happened, more or less."
#
iterations.times do
  puts string
end
#
#
#Creating loops with methods
#Just the number of iterations are called this time.
def print_hello(iterations)
  iterations.times do
    puts "Hello!"
  end
end
#
puts "Calling print_hello(2)..."
print_hello(2)
puts "---"
puts "Now calling print_hello(10)..."
print_hello(10)
#
#Now the number of iterations and the string are called.
def print_lines(iterations, string)
  iterations.times do
    puts string
  end
end
#
puts "Calling print_lines(2, 'Meow')..."
print_lines(2, 'Meow')
puts "---"
puts "Calling print_lines(2, 'Apples'...)"
print_lines(2, 'Apples')
puts "---"
puts "Calling print_lines(5, 'Octopi')"
print_lines(5, 'Octopi')
#