arr = %w{a b c d e f g h i}

puts "this is my array rotated: #{arr.rotate(3).inspect}"
puts "this is my array, not modified: #{arr.inspect}"
puts "this is my array, rotated: #{arr.rotate!(5).inspect}"
puts "... permanently modified: #{arr.inspect}"


# this is my array rotated: ["d", "e", "f", "g", "h", "i", "a", "b", "c"]
# this is my array, not modified: ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
# this is my array, rotated: ["f", "g", "h", "i", "a", "b", "c", "d", "e"]
# ... permanently modified: ["f", "g", "h", "i", "a", "b", "c", "d", "e"]