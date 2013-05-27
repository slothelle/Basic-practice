require_relative 'fruit_tree'
require_relative 'fruit_tree_types'

class TreeGrove
  def initialize(fruit_trees)
    @trees = fruit_trees
  end

  def age!
    @trees.each { |tree| tree.age! }
  end

  def trees
    @trees.map(&:class).join(", ")
  end

  def mature_trees
    @trees.select { |tree| tree if tree.any_fruit? }.map(&:class).join(", ")
  end

  def dead_trees
    @trees.select { |tree| tree if tree.dead? }.map(&:class).join(", ")
  end
end

my_grove = TreeGrove.new([OrangeTree.new, PearTree.new, AppleTree.new])

my_grove.age! 
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age! 
my_grove.age! 
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age! 
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age!
my_grove.age!

puts "ALL TREES"
puts my_grove.trees
puts ""

puts "MATURE TREES"
puts my_grove.mature_trees
puts ""

puts "DEAD TREES"
puts my_grove.dead_trees
