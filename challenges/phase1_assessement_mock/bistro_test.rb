require_relative('bistro')

bernies = Bistro.new
bernies.load_recipes('recipes.csv')

puts "Display abbreviated list:"
bernies.display_recipe_list
# Should print something like:
# #. Name

puts "Find recipe 1 (integer):"
bernies.find_recipe_by_id(1) 
# Should print full recipe with cute formatting

puts "Find recipe 1 (string):"
bernies.find_recipe_by_id('1') 

puts "Find recipe 2 - order should not have changed:"
bernies.find_recipe_by_id(2)

puts "Find a recipe that doesn't exist:"
bernies.find_recipe_by_id(7)
# Should return no recipe with ID error

puts "Add a recipe:"
bernies.add_recipe("thing")
# Private method error