require_relative 'fruit_tree'

class NoFruitError < StandardError; end

class Apple < Fruit; end

class Orange < Fruit; end

class Pear < Fruit; end

class AppleTree < FruitTree
  def dead?
    return true if @age >= 10
  end 

  private
  def grow_taller
    @height +=1 if @age < 8
  end

  def bear_fruit
    if @age < 9 && @age > 2
      (rand(25)+1).times do
        @fruit << Apple.new(rand(4)+1)
      end 
    end 
  end
end

class OrangeTree < FruitTree
  def dead?
    return true if @age >= 20
  end 

  private
  def grow_taller
    @height +=2 if @age < 18
  end

  def bear_fruit
    if @age < 17 && @age > 6
      (rand(15)+1).times do
        @fruit << Orange.new(rand(10)+1)
      end 
    end 
  end 
end

class PearTree < FruitTree
  def dead?
    return true if @age >= 9
  end

  private
  def grow_taller
    @height += 3 if @age < 8
  end

  def bear_fruit
    if @age < 7 && @age > 2
      (rand(15)+1).times do
        @fruit << Pear.new(rand(4)+1)
      end 
    end 
  end 
end

tree = PearTree.new

tree.age! until tree.any_fruit?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []
  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_fruit?
    basket << tree.pick_fruit!
  end

  total = [0]
  basket.each { |orange| total << orange.diameter }
  avg_diameter = total.inject(:+) / total.length

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} pears with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
p tree.about_tree
