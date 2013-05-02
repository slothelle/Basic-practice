# Skeleton for a wedding budget calculator
# Using this as an opportunity to learn more about hashes! 

class WeddingBudget

  def initialize(budget)
    @budget = budget
    my_budget = Hash.new
  end

  def add_item
    # Adds item to the budget
  end

  def update_item_cost
    # Updates the cost of an existing item in the budget
    # Checks that item exists first
  end

  def update_item_name
    # Updates the name of an existing item in the budget
    # Checks that item exists first
  end 

  def remove_item
    # Removes existing item from budget list
  end

  def calculate_total_remaining
    # Calculates how much you have left to spend based on items in budget
  end 

  def calculate_total_spent
    # Calculates how much you've spent to far
  end

  def item_cost_lookup
    # Looks up the cost of an existing item
  end 

end