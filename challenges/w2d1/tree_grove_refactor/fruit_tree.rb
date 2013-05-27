class FruitTree
  attr_reader :height, :age

  def initialize
    @age = 0
    @height = 0
    @fruit = []
  end 

  def age!
    grow_older
    grow_taller
    bear_fruit
  end

  def any_fruit?
    return true if @fruit.length > 0
  end

  def pick_fruit!
    raise NoFruitError, "This tree has no fruit" unless self.any_fruit?
    @fruit.pop
  end

  def about_tree
    "I am #{@age} years old and #{@height} feet tall."
  end 

  private
  def grow_older
    @age +=1
  end 

  def grow_taller
    @height += 1 unless dead?
  end

  def bear_fruit
    @fruit << Fruit.new(1) unless dead?
  end 
end

class Fruit
  attr_reader :diameter

  def initialize(diameter)
    @diameter = diameter
  end
end
