# So far, we've done 3 things.
# Yes, all this work and only 3 things.
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

#
#
#

# Instance variables and def initialize 
# 3 things happened in the above code:
# (1) added a new method initialize to our class which has a single argument
# (2) assigned that argument (sides) to a funny looking variable called @sides
# (3) Die#roll now references @sides, rather than 6

#
#
#

#The 3 things

# (1) initialize
# Sometimes when we call new we need to pass in initial data
# For our Die class, we need to pass in the number of sides on the die
# For a Person class, we might need to pass in personal details like first name, last name, etc
# The arguments to new will be whatever bits of data that are particular to the instance we want to create
# We tell the instance what to do with this data by defining an initialize method
# The initialize method is called immediately when you call new
# Argument passed to new come in as parameters to initialize 

# Example
class Dummy
  def initialize(something)
    puts "Someone called Dummy.new with: #{something.inspect}."
  end
end

Dummy.new(1)
Dummy.new(10)
Dummy.new("Nancy Drew")
Dummy.new([1,2,3])

data = {:first_name => 'Frank', :last_name => 'Hardy'}
Dummy.new(data)

# Prints
# Someone called Dummy.new with: 1
# Someone called Dummy.new with: 10
# Someone called Dummy.new with: "Nancy Drew"
# Someone called Dummy.new with: [1, 2, 3]
# Someone called Dummy.new with: {:first_name=>"Frank", :last_name=>"Hardy"}

#
#
#

# (2) Instance variables
# @sides = instance variable
# This is different than a local variable, which is ony accessible in the method it's defined in
# Instance variables are particular to a given object instance, but can be accessed by any instance method

# Example
class Person
  def initialize(first_name, last_name) # Local variables passed in as arguments
    @first_name = first_name # Instance variables, initialized here
    @last_name = last_name
  end
  
  def first_name # Instance method, returns first name
    @first_name # Can access instance variable @first_name even though it wasn't passed in as argument to first_name
  end
  
  def last_name # Instance method, returns last name
    @last_name
  end
end

man = Person.new('Steve', 'Austin')
woman = Person.new('Jaime', 'Sommers')

puts "The Six Million Dollar Man is #{man.first_name} #{man.last_name}"
puts "The Bionic Woman is #{woman.first_name} #{woman.last_name}"

# Each instance of Person (man and woman objects) has separate copies of @first_name and @last_name
# Instance methods for a particular instance can access their own copies of the instance variables
# Instance methods can access them, the outside world cannot

#
#
#

# Back to the many-sided Die class, this time with commentary 
class Die
  # This allows Die.new to accept the number of sides as an argument
  #
  # sides is a local variable, passed in as an argument - only accessible in THIS method
  # @sides is an instance variable, initialized here
  #
  # @sides is accessible to all instance mthods in this instance
  def initialize(sides)
    @sides = sides
  end
  
  # Since roll is an instance method, it can access the @sides instance varibale
  def roll
    1 + rand(@sides)
  end
  
  # multiple_rolls is an instance method
  # num_rolls is a local variable, passed in as an argument
  #
  # This method called self.roll rather than deal with @sides, but it can access @sides if needed
  def multiple_rolls(num_rolls)
    rolls = []
    
    num_rolls.times do
      rolls << self.roll
    end
  
    rolls
  end
end

six_die = Die.new(6)
twenty_die = Die.new(20)

# This will return a 10 element array with results from a 6 sided die
p six_die.multiple_rolls(10)

# This will return a 10 element array with results form a 20 sided die
<<<<<<< HEAD
p twenty_die.multiple_rolls(10)
=======
p twenty_die.multiple_rolls(10)
>>>>>>> new
