# So far, we've done 3 things. Yes, all this work and only 3 things.
# (1) Defined classes and objects and explored some of Ruby's built-in classes
# (2) Defined our own Die class with a single instance method, Die#roll
# (3) Extended our Die class to allow for multiple rolls using the self keyword

# Extending Die class to create a dice with any number of sides

class Die
  def initialize(sides)
    @sides = sides
  end

  def roll
    1 + rand(@sides)
  end

  def multiple_rolls(num_rolls)
    rolls = []

    num_rolls.times do
      rolls << self.roll
    end

    rolls
  end
end

six_die = Die.new(6) # Die.new is calling the first method listed
twenty_die = Die.new(20)

puts six_die.multiple_rolls(10) # Returns a 10 element array with 1-6
puts twenty_die.multiple_rolls(10) # Returns 10 element array with 1-20