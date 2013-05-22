# STORY
# - I want to simulate an aquarium 
# - It should hold different species and colors of fish
# - Fish swim and eat, and poop
# - The tank will get dirty eventually, so we need to clean it

# VERBS
# add (fish? or other things?)
# swim
# eat
# poop
# clean

# ATTRIBUTES
# species
# color

# CLASSES
# aquarium
# fish

# PREDICATE
# dirty? (times passes)

class Aquarium
  def initialize
    @ water = []
  end

  def add_to_tank(thing)
    @water << thing
  end 

  def dirty?
    @clean ||= false
  end

  def clean!
    @clean = true
  end
end

class Fish
  def initialize(species, color)
    @species = species
    @color = color
    @stomach = []
  end

  def eat(food)
    @stomach << food
  end

  def swim
    "Just keep swimming!"
  end

  def poop
    @stomach.clean
  end
end

my_tank = Aquarium.new

nemo = Fish.new("clownfish", "orange")
dory = Fish.new("angelfish", "blue")

my_tank.add_to_tank(nemo)
my_tank.add_to_tank(dory)

puts nemo.swim
dory.eat("plankton")
dory.poop
