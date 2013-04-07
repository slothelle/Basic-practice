# Working off your previous Die class, 
# implement a new Die class which takes
# an array of strings as its input. 
# When Die#roll is called, it randomly 
# returns one of these strings. 

# If Die.new is passed an empty array, 
# raise an ArgumentError. 
# It should work like this:

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides 
# still returns the number of sides, in this case 6

die.roll 
# returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

# Just to reiterate, in the previous 
# exercise you passed in a number of sides, 
# sides, and the labels were assumed to 
# be the integers 1..sides. Now we're 
# passing in a list of arbitrary labels. 
# We could use this to represent a 
# Dreidel or Boggle dice, for example.

class Die
  def initialize(sides)
    @sides = sides
    
    if sides.length == 0
      raise ArgumentError.new("No empty arrays allowed, bro.")
    end
  end
  
  def sides
    return @sides.length
  end
  
  def roll
    @sides.sample
  end
end