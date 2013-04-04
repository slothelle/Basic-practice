# The Die Class

class Die
  def roll
    1 + rand(6)
  end
end

my_die = Die.new
10.times do
  puts my_die.roll
end

# Prints out 10 random integers between 1 and 6,
# or 10 rolls of a 6-sided die 
# rand(6) returns one of 6 random integers starting from 0 (so 0-5)
# so 1 + rand(6) returns a random integer from 1-6

# Some notes...

class Die # This says we're defining a new class called Die
  def roll # This say we're defining a new method called 'roll' for each instance of Die
    1 + rand(6) # This returns a random integer 1-6 so our Die is always 6 sided
  end
end

#
#
#

# What if we wanted to collect the results of multiple rolls into an Array?
# Example
# Note that writing this outside of the class requires access to multiple_rolls method

def multiple_rolls(die, num_rolls)
  rolls = []

  num_rolls.times do
    rolls << die.roll
  end

  rolls
end

my_die = Die.new

puts multiple_rolls(my_die, 10)

#
#
#

# So we include this method in the Class definition to make it more accessible... 

class Die
  def roll
    1 + rand(6)
  end

  def multiple_rolls(num_rolls)

    rolls = []

    num_rolls.times do
      rolls << self.roll
    end

    rolls
  end
end

my_die = Die.new

puts my_die.multiple_rolls(10)

# self.roll
# When you're inside the definition of an instance method
# the self keyword refers to "the current instance"
# the instance on which the method is being called.
# The self keyword allows us to write instance methods
# before a particular object is instantiated. 

#
#
#

# Encapsulation 

# There are two main ways to add behavior to an existing instance of a class
# (1) Define a new instance method on the class and use self, 
# which refers to the instance on which the method is being called
# (2) Define a stanable method which takes an instance of that clas
# as one of its arguments 

# The first style is a core concept of object-oriented programming
# called encapsulation 
# Keeping Die-specific logic/behavior inside of the Die class
# keeps everything in a single place and prevents tampering 