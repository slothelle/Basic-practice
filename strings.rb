#practice from ruby docs
#http://www.ruby-doc.org/core-1.9.3/String.html

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
puts (a.concat(" How are you? "))
puts (a.concat("I am doing well."))

# str comparison
puts ("abc" <=> "abcd")
puts ("abcde" <=> "abcde")
puts ("abcdef" <=> "abcde")
puts ("abcd" == "abc")
puts ("abc" == "abc")

# str =~ position where matching begins
# not sure how /\d/ can be used in other instances?
puts ("cat o' 9 tails" =~ /\d/)
puts ("cat o' 9 tails" =~ 9)
puts ("blind mice, 3 of them" =~ /\d/)

#element reference
#returning substrings based on the positions given
b = "plastic bingo"

#character
puts b[1]

#position, length
puts b[2, 4]

#position, stop at
puts b[2..3]

#negative wraps around from the end of str
puts b[-2, 3]

#using regexp to match a portion of str
#why doesn't this work?? always returns nil
puts b[/[aeiou](.)\1/]
puts b[/[aeiou](.)\1/, 0]
puts b[/[aeiou](.)\1/, 1]
puts b[/[aeiou](.)\1/, 2]
puts b[/[aeiou](.)\3/]

puts b["bing"]
puts b["bang"]

