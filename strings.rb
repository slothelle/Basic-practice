# str * integer 
puts "Cheese! " * 3

# str + other_str
name = "Kiwi"
puts = "Hello, ny name is " + name.to_s

# append/concatenate 
# integers are converted to characters
a = "Greetings "
puts (a << "friend")
puts (a.concat(33))
puts (a.concat(" How are you?"))

# str comparison
puts ("abc" <=> "abcd")
puts ("abcde" <=> "abcde")
puts ("abcdef" <=> "abcde")
puts ("abcd" == "abc")
puts ("abc" == "abc")