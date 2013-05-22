class Oven
  def initialize
    @batch = []
  end 

  def cook(food)
    food.start = Time.now
    @batch << food
  end

  def remove(food)
    current_time = Time.now
    @batch.delete(food)
    puts "Your #{food.class} are #{food.doneness(current_time)}"
  end 

  def check_contents
    current_time = Time.now
    puts "Hey good lookin', here's whatchu got cookin':"
    puts "Food\t\t| Qty\t\t| Done?"
    @batch.each do |food|
      puts "#{food.class}\t| #{food.number}\t\t| #{food.doneness(current_time)}"
    end 
  end 
end

class Cookie
  attr_reader :number
  attr_accessor :start

  def initialize(number = 12)
    @number = number
  end

  def doneness(time)
    time = time - @start
    case time
    when 0..(bake_time - 8) then "Salmonella-y"
    when (bake_time - 8)..(bake_time - 4) then "Doughy"
    when (bake_time - 4)..(bake_time - 1) then "Almost ready"
    when (bake_time - 1)..(bake_time + 5) then "Ready!"
    else "Burned :("
    end
  end 

  private
  def bake_time
    bake_time ||= 30
  end 
end

class ChocolateChip < Cookie
  private
  def bake_time
    30
  end
end 

class Sugar < Cookie
  private
  def bake_time
    20
  end
end 

class Pizza < Cookie
  private
  def bake_time
    45
  end 
end 

puts "Lets make some cookies!"

oven = Oven.new
choco = ChocolateChip.new(24)
sugar = Sugar.new(36)
pizza = Pizza.new(12)

oven.cook(choco)
puts "Baking!"
36.times do
  oven.check_contents
  sleep(1.5)
end
oven.remove(choco)
oven.check_contents