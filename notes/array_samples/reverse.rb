arr = %w{tacocat banana bacon cheese tacocat}

puts "reversed: #{arr.reverse.inspect}"
puts "not changed: #{arr.inspect}"
puts "reversed again: #{arr.reverse!.inspect}"
puts "permanently altered #{arr.inspect}"

# reversed: ["tacocat", "cheese", "bacon", "banana", "tacocat"]
# not changed: ["tacocat", "banana", "bacon", "cheese", "tacocat"]
# reversed again: ["tacocat", "cheese", "bacon", "banana", "tacocat"]
# permanently altered ["tacocat", "cheese", "bacon", "banana", "tacocat"]

arr.each { |word| word.reverse! }

puts "this is each elemt in the array, reversed:"
puts "#{arr.inspect}"

# this is each elemt in the array, reversed:
# ["tacocat", "eseehc", "nocab", "ananab", "tacocat"]