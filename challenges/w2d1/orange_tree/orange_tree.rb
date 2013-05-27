class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :age

  def initialize 
    @age = 0
    @height = 0
    @oranges_on_tree = []
    @orange_1 = Orange.new(3)
    @orange_2 = Orange.new(4)
    @orange_3 = Orange.new(5)
    @orange_4 = Orange.new(6)
    @orange_5 = Orange.new(7)
    @orange_6 = Orange.new(8)
  end

  def age!
    @age += 1
    grow!
    grow_oranges!
  end

  def grow!
    if @age <= 4
      @height = @age * 2
    end 
  end 

  def grow_oranges!
    if @age >= 4
      @oranges_on_tree << @orange_1
      @oranges_on_tree << @orange_2
      @oranges_on_tree << @orange_3
      @oranges_on_tree << @orange_4
      @oranges_on_tree << @orange_5
      @oranges_on_tree << @orange_6
    end 
  end

  def height
    "#{@height} feet"
  end 

  def any_oranges?
    return false if @oranges_on_tree.length <= 0
    true
  end

  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    puts "You picked an orange, its diameter is #{@oranges_on_tree.pop.diameter}."
    puts "There are #{@oranges_on_tree.length} left."
  end

  def count_oranges
    @oranges_on_tree.length
  end 

  def dead?
    return true if @age >= 6
  end  
end

class Orange
  attr_reader :diameter 

  def initialize(diameter)
    @diameter = diameter
  end
end

my_tree = OrangeTree.new
p my_tree.age
p my_tree.height
my_tree.age!
p my_tree.age
p my_tree.height
my_tree.age!
p my_tree.age
p my_tree.height
my_tree.age!
p my_tree.age
p my_tree.height
my_tree.age!
p my_tree.age
p my_tree.height
p my_tree.any_oranges?
p my_tree.count_oranges
my_tree.pick_an_orange!
my_tree.pick_an_orange!
my_tree.pick_an_orange!
my_tree.pick_an_orange!