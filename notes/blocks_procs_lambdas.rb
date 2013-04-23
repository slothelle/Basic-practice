# BLOCKS / PROCS / LAMBDAS ONE SHEET

# BLOCKS
# are code between do..end or {}
# they are not an object
# they can be passed to some methods directly (or can be integrated using yield)

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select { |n| n.is_a? Integer }

# PROCS
# are a saved block that can be re-used
# they are an object
# they can be integrated into a method using .call (or yield)
# they don't check the number of arguments
# they return immediately and do not complete the method

# LAMBDAS
# are a saved block that can be re-used
# they are an object
# they can be integrated into a method using .call (or yield)
# they check the number of arguments passed
# they return to the calling method rather than returning immediately 

# BLOCKS
# Code that can be executed, uses do..end or {}

# (1) 
# Can be combined with methods like .each and .times to execute the code for each element in a collection (hash or array)
5.times { puts "This is a block." }

my_array = [1,2,3]
my_array.each { |x| puts x*x }

# (2)
# Collect method works here too!

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect { |x| x * 2 }

# (3)
# Some methods don't accept blocks.
# Methods that accept blocks have a way of transferring control from the calling method 
# to the block and back again.
# You can build this into methods by using yield.

# Example (why would you want to do this?)
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

# We're in the method!
# Yielding to the block...
# >>> We're in the block!
# We're back in the method!

# Another example
def yield_name(name)
  puts "In the method! Let's yield."
  yield name
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |name| puts "My name is #{name}." }
yield_name("Liz") { |n| puts "My name is #{n}." }

# In the method! Let's yield.
# My name is Eric.
# Block complete! Back in the method.
# In the method! Let's yield.
# My name is Liz.
# Block complete! Back in the method.

# Another example 
def double(num)
  puts "In the method."
  puts "Going into the block now..."
  yield num
  puts "Boom. Back in the method."
end

double(2) { |x| puts x * 2 }

# In the method.
# Going into the block now...
# 4
# Boom. Back in the method.

#
#
#

# PROCS
# Essentially a saved block.
# You write a block and name it, which turns it into a proc.
# Every time you want to use that, you call the proc.

# Example
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)

# To define procs, you just do Proc.new:
cube = Proc.new { |x| x ** 3 }

# To pass the proc into a method, you do this:
my_array = [1, 2, 3]
my_array.collect!(&cube) # [1, 8, 27]

array_two = [4, 5, 6]
array_two.map!(&cube) # [64, 125, 216]

# You use & to convert the proc into a block because .collect! and .map! normally take blocks.
# You do this anytime you're passing a proc into a method that expects a block.

# Example 
# .floor rounds floats to nearest integer

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |x| x.floor }

ints = floats.collect(&round_down)

# There are two main advantages to using procs
# (1) procs are objects and can do everything that objects can (blocks aren't objects)
# (2) you can re-use them without re-writing 

# Another example of re-using the proc 
over_4_feet = Proc.new { |h| h >= 4 }

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

# Using yield with procs

def greeter
  yield 
end

phrase = Proc.new do 
  puts "Hello there!"
end 

greeter(&phrase)

# Shockingly, there is an easier way to do this.
# You can call your proc using .call 
hi = Proc.new do
  puts "Hello!"
end

hi.call

# You can also convert symbols to procs
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s) # converts everything in the array to a string 
# can use .map or .collect for this 

#
#
#

# LAMBDAS!
# Lambdas are like procs, they are also objects
# There are a few syntactic differences, but they are basically the same thing
# For example, this lambda:
lambda { puts "Hello!" }
# ...is this same as this proc:
Proc.new { puts "Hello!" }

# Example! You can use call for Lambdas:
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

# Syntax is always
name = lambda { block }

# Example
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda { |x| x.to_sym } # converting each item in the array to a symbol
symbols = strings.collect(&symbolize)

# Example
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda { |x| x.is_a? Symbol }
symbols = my_array.select(&symbol_filter) # [:kettles, :mittens, :packages]

#
#
#

# LAMBDAS V. PROCS
# 1. Lambdas check the number of arguments passed to it; procs don't, and return nil for missing arguments
# 2. When lambdas return, it passes control back to the method and finishes the method; procs are the return and do not call back to the method 

# Example of 2

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call # Returns here, does not finish method
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call # Lambda goes back to the method
  "Iron Man will win!" # Returns here  
end

puts batman_ironman_lambda