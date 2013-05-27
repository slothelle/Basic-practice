# Conditional assignment
# What if we only want to assign something to a variable if it hasn't been assigned yet?
# We can use the conditional operator: ||=

favorite_book = nil # Empty variable
puts favorite_book

favorite_book ||= "Cat's Cradle" # Assigns because variable is empty
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby" # Variable is not empty, does not assign
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby" # Overrides assignment 
puts favorite_book

# My example
favorite_language = nil

favorite_language ||= "American Sign Language"
puts favorite_language

favorite_language ||= "French"
puts favorite_language

favorite_language = "Beer"
puts favorite_language