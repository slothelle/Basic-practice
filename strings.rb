#practice from ruby docs
#http://www.ruby-doc.org/core-1.9.3/String.html

#always using to puts to display result in console 

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

#bytesize of the str
#how is this different than length?
puts "what a lovely bunch of coconuts".bytesize 
puts "what a lovely bunch of coconuts".length

#byteslice returns a substring
puts "what a lovely bunch of coconuts".byteslice(1, 4)
puts "what a lovely bunch of coconuts".byteslice(1..8)

#capitalize, with bang
#important to note that ! permanently changes the str
#if you try to use ! after already changing the str, you get nil
c = "alphabetically speaking"
puts c.capitalize
puts c
puts c.capitalize!
puts c

#casecmp similar to str comparison, but is not case sensitive
puts "hello lala".casecmp("hello la")
puts "hello lala".casecmp("Hello LALA")
puts "hello lala".casecmp("hello lalala")

#center
#hey! something i already know! hooray!
puts "I would like some bacon!".center(100)

#passes each character in str to the given block
#what would this be useful for?
puts "abcdefghijk".each_char {|c| print c, ' '}
#ruby docs show this as "a b c d e f g h i j k", 
#but my modified str produces that + the original str?

#chomp v. chop?
#removing separator v. removing last character

#one-character str from the beginning of str
#clearing out the str
#what would these be used for?
puts c.chr
puts c.clear

#counting characters in str
#starting with a capital letter produces different results
d = "itsy bitsy spider went up"
puts d.count "spid"
puts d.count " wen"
puts d.count "bit"





