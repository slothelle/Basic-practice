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
puts c.swapcase

#casecmp similar to str comparison, but is not case sensitive
puts "hello lala".casecmp("hello la")
puts "hello lala".casecmp("Hello LALA")
puts "hello lala".casecmp("hello lalala")

#alignment
#hey! something i already know! hooray!
puts "I would like some bacon!".center(100)
puts "Then get into the kitchen!".ljust(100)
puts "Brought to you by hunger.".rjust(100)
puts "Hey!".center(30, ' * ')
#note that for center to place evenly, it has to be
#divisble by the number of characters you're filling space with

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

#crypt
#one way encryption
#how do you decrypt?
#uses a-z, A-Z, 0-9
e = "messages in bottle"
puts e.crypt("aa")

#deleting characters
f = "once upon a time there was a fairy princess"
puts (f.delete "aeiou")
puts (f.delete "y")
puts (f.delete "ss")
puts (f.delete "m-t")
puts (f.delete "rst", "^ess")
#can also be used with ! to permanently modify str

#true or false?
puts "casino!".empty?
puts "".empty?
puts "---"
puts "princess".end_with?("cess"+"cat")
puts "princess".end_with?("p")
puts "princess".end_with?("es"+"s")
puts "---"
puts "banana".eql?("apple")
puts "banana".eql?("banana")
puts "banana".eql?("ananab")

#replacing characters in str
#gsubreplaces ALL instances of pattern
#sub replaces only first instance of the pattern
g = "my little ponies"
puts g.gsub(/[p]/, 't')
puts g.gsub(/[my]/, 'm' => 'you', 'y' => 'r')
puts g.gsub(/[pon]/, 'p' => 'ba', 'o' => 'r', 'n' => 'b')
puts g.sub(/[i]/, 'a')
puts g.replace "coffee cup"

#returns decimal number
#treats leading characters as a string of hex digits
#zero is a error
puts "FF".hex
puts "1B".hex

#does this live here?
h = "stop in the name of love"
puts h.include? "stop"
puts h.include? "banana"
puts h.include? "am"

#moving in next door
#adding characters based on placement
iI = "what if was flat?"
puts iI.insert(8, "the world ")
puts iI.insert(7, " your sandwich")

#removing leading/end white space
jJ = "   I forgot my keys!   "
puts jJ.lstrip
puts jJ.rstrip
puts jJ.strip

#successor 
kK = "abcz"
puts kK.succ

#breaking up str into partitions 
lL = "buffalo"
puts lL.partition("f")

#prepend
#add something to the front of a str
mM = "bring me the cheese?"
puts mM.prepend("Will you ")

#reverse
nN = "taco cat"
puts nN.reverse

#scanning for matches
#splitting up text
oO = "heaven is a place on earth"
puts oO.scan(/\w+/)
puts oO.scan(/......./)
puts oO.scan(/\w+/) {|w| print "~#{w}~ "}
puts oO.split
puts oO.split("place")

#slice
#deleting parts of the string, and telling you what was deleted
#different from delete
#combined with gsub! and prepend
pP = "writing on the wall"
puts pP
pP.slice!(0..9)
pP.slice!(/w/)
pP.gsub!(/[a]/, 'ca')
pP.prepend("waiting for")
puts pP

#squeeze
puts "bananananannnnna".squeeze
puts "how  about  we     go out".squeeze
puts "whatt a dayy it has been".squeeze("t-y")

#find a match for prefix



