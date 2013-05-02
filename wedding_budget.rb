# Using this as an opportunity to learn more about hashes! 
# Update instances of cost (Hash values) to appear with the commans ($1,000) 

class WeddingBudget

  def initialize(budget)
    @budget = budget
    @my_budget = Hash.new
  end

  def add_item(item, item_cost)
    # Need to update to allow user to add more than 1 item at a time

    if @my_budget[item.to_sym].nil?
      @my_budget[item.to_sym] = item_cost.to_i
      puts "#{item} added to your budget, with a cost of $#{item_cost}."
    else 
      puts "#{item} already exists in your budget. You can update it if you need to!"
    end 
  end

  def update_item_cost(item, item_cost)
    if @my_budget.has_key?(item.to_sym)
      @my_budget[item.to_sym] = item_cost
      puts "#{item} has been updated. Your budget indicates that it now costs #{item_cost}."
      calculate_total_spent_so_far
    else
      puts "Girl, #{item} isn't in your budget. You need to add it!"
    end

  end

  def update_item_name(item, new_item_name)
    # What are the consequences of deleting a key/value pair
    # and creating a new one? 
    if @my_budget.has_key?(item.to_sym)
      cost = @my_budget.fetch(item.to_sym)
      @my_budget.delete(item.to_sym)
      @my_budget[new_item_name.to_sym] = cost
      puts "Changed #{item} to #{new_item_name}."
      list_all_items
    else
      puts "Lady, you are going crazy because #{item} is not in your budget."
    end
  end 

  def remove_item(item)
    if @my_budget.has_key?(item.to_sym)
      @my_budget.delete(item.to_sym)
      puts "Like magic, #{item} has been deleted from your budget."
      calculate_total_spent_so_far
    else 
      puts "Hey bridezilla! You can't remove #{item} from your budget, it doesn't exist."
    end 

  end

  def item_cost_lookup(item)
    if @my_budget.has_key?(item.to_sym)
      puts "According to your budget, #{item} costs $#{@my_budget.fetch(item.to_sym)}."
    else 
      puts "Lady, you are going crazy because #{item} is not in your budget."
    end 
  end 

  def list_all_items
    puts "You have the following things in your budget:"
    @my_budget.each { |item, cost| print "\t * #{item.to_s} ($#{cost.to_s}) \n" }
  end 

  def total_spent 
    sum = 0
    @my_budget.each { |item, cost| sum += cost }
    sum 
  end 

  def calculate_total_remaining
    total_remaining = @budget - total_spent 
    puts "Based on your current budget, you have $#{total_remaining} remaining."
  end 

  def calculate_total_spent_so_far 
    total_spent
    puts "You've budgeted to spend $#{total_spent} (so far)."
  end

end

fitz_wedding = WeddingBudget.new(20000)

fitz_wedding.add_item("dress", 1000)
fitz_wedding.add_item("suit", 1000)
fitz_wedding.add_item("food and booze", 10000)
fitz_wedding.add_item("gifts", 500)
fitz_wedding.add_item("gifts", 400)
fitz_wedding.calculate_total_spent_so_far
fitz_wedding.calculate_total_remaining
fitz_wedding.remove_item("gifts")
fitz_wedding.remove_item("puppies")
fitz_wedding.list_all_items
fitz_wedding.item_cost_lookup("suit")
fitz_wedding.item_cost_lookup("umbrella")
fitz_wedding.update_item_name("suit", "fitzapparels")