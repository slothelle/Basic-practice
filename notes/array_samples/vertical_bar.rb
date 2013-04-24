# |

# ary | other_ary → new_ary

# Set Union
# Returns a new array by joining this array with other_ary,
# removing duplicates.

a_ary = %w( cat dog bird beast kiwi mouse )
b_ary = %w( lucy kiwi )

a_ary | b_ary # ["cat", "dog", "bird", "beast", "kiwi", "mouse", "lucy"]

# Does not modify original arrays:

puts "This is a_ary: #{a_ary.inspect}"
puts "This is b_ary: #{b_ary.inspect}"

# This is a_ary: ["cat", "dog", "bird", "beast", "kiwi", "mouse"]
# This is b_ary: ["lucy", "kiwi"]

# Can be used to create new arrays:
new_ary = a_ary | b_ary # ["cat", "dog", "bird", "beast", "kiwi", "mouse", "lucy"]