# Collect is a block
# Takes a block of code and applies the expression to every element in the array

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 } # [1, 4, 9]

# Value of my_nums doesn't actually change:
my_nums # [1, 2, 3]

# Collect returns a copy, it doesn't modify the original 

# To modify the original, use .collect!
my_nums.collect! { |num| num ** 2 } # [1, 4, 9]
my_nums # [1, 4, 9]