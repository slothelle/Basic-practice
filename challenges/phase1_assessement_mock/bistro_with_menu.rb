# This one has an interactive user menu instead of using ARGV
# because I LIKE MENUS.
# It currently assumes that the file is recipes.csv, but this could
# be changed if needed.
# xoxo,
# gossip girl

require 'csv'

class Recipe
  attr_reader :id, :name, :description, :ingredients, :directions
  def initialize(recipe_hash)
    @id = recipe_hash[:id]
    @name = recipe_hash[:name]
    @description = recipe_hash[:description]
    @ingredients = recipe_hash[:ingredients]
    @directions = recipe_hash[:directions]
  end

  def to_s
    ">>> #{id} - #{name}\n#{description}\n\n> Ingredients:\n#{ingredients}\n\n> Instructions:\n#{directions}\n\n"
  end 
end 

class Bistro
  def initialize
    @recipe_objects = []
  end 

  def load_recipes(filename)
    CSV.foreach(filename, :headers => true, :header_converters => :symbol, :converters => :all) do |row|
      add_recipe(Recipe.new(row))
    end 
  end

  def display_recipe_by_id(recipe_id)
    recipe = @recipe_objects.find { |r| r.id == recipe_id.to_i }
    recipe = "No recipe with ID #{recipe_id}. Try again!" if recipe == nil
    puts recipe
  end 

  def display_recipe_list
    sorted = @recipe_objects.sort_by { |r| r.name }
    sorted.each { |r| puts "#{r.id}. #{r.name}" }
  end 

  private # Could be moved to public later if we wanted to add new recipes
  def add_recipe(recipe)
    @recipe_objects << recipe
  end 
end 

bernies = Bistro.new
bernies.load_recipes('recipes.csv')

menu = <<PARAGRAPH
|------------------------------------------------|
|                   USER MENU                    |
|------------------------------------------------|
|  Desired Action        |  Command              |
|------------------------------------------------|
| > List all recipes     |  display_recipe_list  |
| > Display recipe by ID |  display_recipe_by_id |
|------------------------------------------------|
| > Display user menu    |  menu                 |
| > Go vegan             |  go_vegan             |
| > Logout               |  logout               |
|------------------------------------------------|
PARAGRAPH

go_vegan = <<PARAGRAPH
Why do you work here?
No, seriously.
You should probably get a different job.
PARAGRAPH

puts "Welcome to Bernie's Bistro of Venice Beach!"
puts "Making vegans cry since 1986."
puts "What would you like to do today?"
puts ""
puts menu
puts ""
print "Commmand > "
command = gets.chomp
puts ""

until command == "logout"
  if command == "display_recipe_list"
    bernies.display_recipe_list
  elsif command == "display_recipe_by_id"
    puts "What is the ID of the recipe you are looking for?"
    print "> "
    id = gets.chomp
    puts bernies.display_recipe_by_id(id.to_i)
  elsif command == "menu"
    puts menu
  elsif command == "go_vegan"
    puts go_vegan
  end
  puts ""
  print "Command > "
  command = gets.chomp
end 