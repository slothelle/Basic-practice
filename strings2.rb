#combining strings to see how they function together/separately
#practice from ruby docs
#http://www.ruby-doc.org/core-1.9.3/String.html

#always using to puts to display result in console

#replacing characters in str
#gsubreplaces ALL instances of pattern
#sub replaces only first instance of the pattern
g = "my little ponies"
puts g.gsub(/[p]/, 't')
puts g.gsub(/[my]/, 'm' => 'you', 'y' => 'r')
puts g.gsub(/[pon]/, 'p' => 'ba', 'o' => 'r', 'n' => 'b')
puts g.sub(/[i]/, 'a')
puts '---'
puts g.replace "coffee cup"
puts g.tr('up', 'at')
puts g.tr('a-y', 'b-z')
puts g.tr_s('fe', 're')
#it to_str is shorter than from_str, you're SOL