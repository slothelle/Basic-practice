# From Learn How to Program, chapter 11

# Filename doesn't have to end with txt, but since it's text, we're doing it

filename = 'ListerQuote.txt'
test_string = "I promise that I swear absolutely that I will never mention gazpacho soup again."

# The 'w' here is for write-access to the file, since we are trying to write to it
File.open(filename, "w") do |f|
  f.write test_string
end

read_string = File.read filename
puts (read_string == test_string)

# With most programming languages, you have to remember to close the file
# But you don't have to do that with Ruby because 'end' takes care of it

#
#
#

# YAML
# YAML is a format for representing objects as strings
# It is human readable and editable, and also readable by the computer
# It's NOT part of the Ruby core, but it's pretty standard
# This means you have to require it in your program 

require 'yaml'

test_array = ['Give Quiche a Chance',
              'Mutants Out!',
              'Chameleonic Life-Forms, No Thanks']

# Call YAML
test_string = test_array.to_yaml

filename = 'RimmerTShirts.txt'

File.open(filename, "w") do |f|
  f.write test_string
end

read_string = File.read filename

# More YAML
read_array = YAML::load read_string

puts(read_string == test_string)
puts (read_array == test_array)