# Implement a basic Die class which can be initialized with some number of sides. 
# We can then roll the die, returning a random number. It should work like this:

die = Die.new(6)
die.sides # returns 6
die.roll # returns a random number between 1 and 6

# If we pass Die.new a number less than 1, we should raise an ArgumentError. 
# This is done using the raise keyword. 
# See the ArgumentError documentation for how to do this.
# http://apidock.com/ruby/ArgumentError

class Die
  def initialize(sides)
    @sides = sides
    
    if sides < 1
      raise ArgumentError.new("No numbers less than 1 are allowed.")
    end
  end
  
  def sides
    return @sides 
  end
  
  def roll
    rand(1..@sides)
  end
end

# NO GOOGLING NEEDED OMG I AM A GENIUS
# not really 