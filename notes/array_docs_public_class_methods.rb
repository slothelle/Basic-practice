# Notes on Array documentation
# http://www.ruby-doc.org/core-2.0/Array.html
# http://www.ruby-doc.org/core-1.9.3/Array.html

# - - - - - - - - - - - - - - - - - - - - - - - - 

# PUBLIC CLASS METHODS

# (1)
# Returns a new array populated with given objects
[](*arguments)

Array.[]( 1, 'a', /^A/ ) # => [1, "a", /^A/]
Array[ 1, 'a', /^A/ ]    # => [1, "a", /^A/]
[ 1, 'a', /^A/ ]         # => [1, "a", /^A/]

#

# (2)
# Multiple ways to return a new array

new(size=0, obj=nil)        # Returns an empty array if no arguments sent
new(array)                  # Creates a copy of the first array
new(size) {|index| block }  # An array of a given size is created
                            # by passing element's index through the box

                            # Example of last:
                            Array.new(3){ |index| index ** 2 }
                            # => [0, 1, 4]

#

# (3)
# Tries to convert the object into an array
# Returns converted array or nil if it cannot be converted
# Useful for testing if something is an array 

try_convert(obj) → array or nil

# Example:
Array.try_convert([1])   #=> [1]
Array.try_convert("1")   #=> nil

if tmp = Array.try_convert(arg)
  # the argument is an array
elsif tmp = String.try_convert(arg)
  # the argument is a string
end
