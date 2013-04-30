# sample -> obj
# chooses a random element from the array

# sample(random: rng) -> obj
# chooses an element from the array at a random index

# sample(n) -> new array
# chooses n numbers of elements from the array

# sample(n, random: rng) -> new array
# chooses n number of elements from the array at a random index

arr = %w{kittens bows boxes strings packages cheese}
puts "regular old sample: #{arr.sample}" 
# strings

puts "sample(2): #{arr.sample(2)}" 
# kittens bows 

puts "rand(3): #{arr.sample(random: rand(3))}" 
# packages

puts "n, rand: #{arr.sample(2, random: rand)}" 
# packages cheese 
