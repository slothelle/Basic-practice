arr = %w{ bacon cheese orange apple acorn cheese bacon }

puts "the index of bacon is: #{arr.rindex("bacon")}"
puts "the index of cheese is: #{arr.rindex("cheese")}"

# the index of bacon is: 6
# the index of cheese is: 5

thing = arr.rindex { |word| word.length > 5 }

puts "appearance of first word longer than 5 chars: #{thing}"

# appearance of first word longer than 5 chars: 5