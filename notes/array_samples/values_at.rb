my_ary = %w{ lemon lime orange apple banana tortilla cheese wine potato }

puts "Range 1-3, inclusive: #{my_ary.values_at(1..3).inspect}"
puts "Ranges 1-3 (inclusive) and 4-9 (not inclusive): #{my_ary.values_at(1..3, 4...9).inspect}"
puts "Indicies 4, 3, 8: #{my_ary.values_at(4, 3, 8).inspect}"

# Returns
# Range 1-3, inclusive: ["lime", "orange", "apple"]
# Ranges 1-3 (inclusive) and 4-9 (not inclusive): ["lime", "orange", "apple", "banana", "tortilla", "cheese", "wine", "potato"]
# Indicies 4, 3, 8: ["banana", "apple", "potato"]