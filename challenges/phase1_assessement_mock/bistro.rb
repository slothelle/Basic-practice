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
bernies.load_recipes('recipes.csv') if ARGV.any?
bernies.display_recipe_list if ARGV[0] == "list"
bernies.display_recipe_by_id(ARGV[1]) if ARGV[0] == "display"