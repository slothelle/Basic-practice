#hash basics
#elements of a hash are identified by name, not position (essentially unordered lists)
#don't understand "first element", but they do understand "element named Frank"
#values in a hash can be anything, including more complex arrays
#
#syntax: variable {value}
#example
person = {:first_name => 'Frank', :last_name => 'Hardy', :age => 25}
#symbols :first_name, :last_name, :age are called keys
#access specific elements of a hash through their keys
#frequently use symbols for keys, but can use any Ruby object
#
#
#using arrays as elements
living_things = {:animals => ['dog', 'cat', 'bird'], :plants => ['tulip', 'cactus', 'palm tree']}
#
#using variables as elements
first_name = 'Frank'
last_name = 'Hardy'
age = 25
person = {:first_name => first_name, :last_name => last_name, :age => age}
#
#
#
#strings as keys
person = {'first_name' => 'Frank', 'last_name' => 'Hardy', 'age' => 25}
puts "#{person['first_name']} #{person['last_name']} is #{person['age']} years old."
#using symbols instead of strings results in your program using less memory
#
#
#you can split up hash declarations across multiple lines if you end lines in commas
person = {:first_name => 'Frank', 
          :last_name  => 'Hardy', 
          :age        => 25}
#
#
#reading from hashes (using above person)
puts person[:first_name]
#
#
#hash keys
#my_hash[:apple] is nil because it holds an undefined key
my_hash = {:foo => 'bar', 'apple' => 'pie'}
puts "my_hash[:foo] is #{my_hash[:foo]}."
puts "my_hash['apple'] is #{my_hash['apple']}."
puts "my_hash[:apple] is #{my_hash[:apple]}."
#
my_hash = {[1,2,3]  => 'this',
            {}      => 'is',
            100     => 'Sparta!'}
puts "my_hash[[1,2,3]] is #{my_hash[[1,2,3]]}"
puts "my_hash[{}] is #{my_hash[{}]}"
puts "my_hash[100] is #{my_hash[100]}"
#
#
#changing a hash
#you can change the value of hash by using specific keys
person = {:first_name => 'Frank', :last_name => 'Hardy', :age => 25}
puts "The person's age is #{person[:age]}."
#change it using this key:
person[:age] = 100
puts "The person's age is now #{person[:age]}."
#
#
#add a key to a hash
my_hash = {}
puts "The value of my_hash[:foo] is #{my_hash[:foo].inspect}"
my_hash[:foo] = 'waffle'
puts "The value of my_hash[:foo] is now #{my_hash[:foo].inspect}"
#
#
#hash vocabulary 
#value at key :first_name is 'Frank'
#person[:first_name] is equal to 'Frank'
#value at key :last_name is 'Hardy'
#person[:last_name] is equal to 'Hardy'
#person[:age] is equal to 25
#this hash has 3 keys: :first_name, :last_name, :age
#this has has 3 values: "Frank", "Hardy", "25"
#calling person[:age] = 100, we're setting the value at the key :age to 100