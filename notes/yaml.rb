require 'yaml'

things = ['Kittens', 'Brown paper packages', 'Ribbons', 'Kiwi',]
people = ['Colin']
foods = ['Cheese', 'Wine', 'Potatoes', 'Pineapple']
meals = ['Breakfast', 'Lunch', 'Dinner', 'High tea']

test_array = ["Favorite things: \n\n\t> #{things.join("\n\t> ")} \n", 
              "Favorite foods: \n\n\t> #{foods.join("\n\t> ")} \n", 
              "Favorite times to eat said foods: \n\n\t> #{meals.join("\n\t> ")} \n",
              "Favorite people: \n\n\t> #{people}"]

# Call YAML
test_string = test_array.to_yaml

filename = 'yaml_tests.txt'

File.open(filename, "w") do |f|
  f.write test_string
end

read_string = File.read filename

# More YAML
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)