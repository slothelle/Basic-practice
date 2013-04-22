# Notes on Array documentation
# http://www.ruby-doc.org/core-2.0/Array.html
# http://www.ruby-doc.org/core-1.9.3/Array.html

# - - - - - - - - - - - - - - - - - - - - - - - - 

# PUBLIC INSTANCE METHODS

# TYPES
# Set intersection
# Repetition
# Concatenation
# Array difference
# Appends
# Comparison
# Equality 

# (1)
ary & other_ary → new_ary
# Set intersection
# Returns a new array containing common elements of first two arrays
# Excludes duplicates
# Order is preserved from original array 
# Also compares elements using hash? and eql? 
# See also #uniq

# Example:
[ 1, 1, 3, 5 ] & [ 1, 2, 3 ]                 #=> [ 1, 3 ]
[ 'a', 'b', 'b', 'z' ] & [ 'a', 'b', 'c' ]   #=> [ 'a', 'b' ]

#

# (2)
ary * int → new_ary
ary * str → new_string
# Repetition 
# String argument, equivalent to ary.join(str)
# Otherwise, returns a new array by concatenating the integer copies of self

# Example:
[ 1, 2, 3 ] * 3    #=> [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]
[ 1, 2, 3 ] * ","  #=> "1,2,3"

#

# (3)
ary + other_ary → new_ary
# Concatenation 
# Returns a new array built by concatenating two arrays to produce a third
# See also #concat 

# Example:
[ 1, 2, 3 ] + [ 4, 5 ]    #=> [ 1, 2, 3, 4, 5 ]
a = [ "a", "b", "c" ]
a + [ "d", "e", "f" ]
a                         #=> [ "a", "b", "c", "d", "e", "f" ]

#

# (4)
ary - other_ary → new_ary
# Array difference
# Returns new array that is a copy of the original array,
# removing any items that also appear in other_ary
# The order is preserved from the originl array
# Also compares elements using hash? and eql? 
# Should use library class Set for a set-like behavior

# Example:
[ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]  #=>  [ 3, 3, 5 ]

#

# (5)
ary << obj → ary
# Appends
# Pushes the given object to the end of this array
# Expressions can be chained together

# Example:
[ 1, 2 ] << "c" << "d" << [ 3, 4 ]
#=>  [ 1, 2, "c", "d", [ 3, 4 ] ]

#

# (6)
<=> other_ary → -1, 0, +1 or nil
# Comparison
# Returns an integer (-1, 0, ot +1) if an array is less than,
# equal to, or greater than other_ary
# nil is return if incomparable
# Arrays are compared in an element-wise manner;
# first two elements that are not equal will determine the
# return value for the whole comparison
# If all values are equal, then return is based on a comparison
# of the array lengths
# SO THIS MEANS: two arrays are only equal if
# (a) they have the same length and
# (b) the value of each element is the same in both arrays

# Example:
[ "a", "a", "c" ]    <=> [ "a", "b", "c" ]   #=> -1
[ 1, 2, 3, 4, 5, 6 ] <=> [ 1, 2 ]            #=> +1

#

# (7)
ary == other_ary → bool
# Equality
# Two arrays are equal if they contain the same number of elements
# and if each element is equal to (Obj == Obj) the correspending
# element in the other array

# Example:
[ "a", "c" ]    == [ "a", "c", 7 ]     #=> false
[ "a", "c", 7 ] == [ "a", "c", 7 ]     #=> true
[ "a", "c", 7 ] == [ "a", "d", "f" ]   #=> false

#

# (8)
ary[index] → obj or nil 
ary[start, length] → new_ary or nil
ary[range] → new_ary or nil
slice(index) → obj or nil
slice(start, length) → new_ary or nil
slice(range) → new_ary or nil
# Element reference
# Returns the element at index, or returns subarray starting
# at the start index and continuing for length elements,
# or returns a subarray specified by range of indicies 
# Negative indices count backwards. 
# An empty array is returned when the starting
# index for an element range is at the end of the array
# Returns nil if index or starting index are out of range

# Example:
a = [ "a", "b", "c", "d", "e" ]
a[2] +  a[0] + a[1]    #=> "cab"
a[6]                   #=> nil
a[1, 2]                #=> [ "b", "c" ]
a[1..3]                #=> [ "b", "c", "d" ]
a[4..7]                #=> [ "e" ]
a[6..10]               #=> nil
a[-3, 3]               #=> [ "c", "d", "e" ]
# special cases
a[5]                   #=> nil
a[6, 1]                #=> nil
a[5, 1]                #=> []
a[5..10]               #=> []

#

# (9)
ary[index] = obj → obj 
ary[start, length] = obj or other_ary or nil → obj or other_ary or nil
ary[range] = obj or other_ary or nil → obj or other_ary or nil
# Element assignment
# Sets the element at index,
# or replaces a subarray from the start index for length elements,
# or replaces a subarray specific by the range of indicies 
# If indices are > current capacity, array grows automatically.
# Elements are inserted into the array at start if length == 0
# Negative indices will count backward. 
# An IndexError is raised is a negative index points
# past the beginning of the array.
# See also #push and #unshift 

# Example:
a = Array.new
a[4] = "4";                 #=> [nil, nil, nil, nil, "4"]
a[0, 3] = [ 'a', 'b', 'c' ] #=> ["a", "b", "c", nil, "4"]
a[1..2] = [ 1, 2 ]          #=> ["a", 1, 2, nil, "4"]
a[0, 2] = "?"               #=> ["?", 2, nil, "4"]
a[0..2] = "A"               #=> ["A", "4"]
a[-1]   = "Z"               #=> ["A", "Z"]
a[1..-1] = nil              #=> ["A", nil]
a[1..-1] = []               #=> ["A"]
a[0, 0] = [ 1, 2 ]          #=> [1, 2, "A"]
a[3, 0] = "B"               #=> [1, 2, "A", "B"]

# 

# (10)
assoc(obj) → new_ary or nil
# Comparison
# Searches through an array whose elements are also arrays
# comparing obj with the first element of each contained in array
# using obj == obj
# Returns the first contained array that matches
# or nil if no match is found
# See also #rassoc

# Example:
s1 = [ "colors", "red", "blue", "green" ]
s2 = [ "letters", "a", "b", "c" ]
s3 = "foo"
a  = [ s1, s2, s3 ]
a.assoc("letters")  #=> [ "letters", "a", "b", "c" ]
a.assoc("foo")      #=> nil

#

# (11)
at(index) → obj or nil
# Element reference
# Returns the element at index
# Negative counts backwards from end.
# Returns nil if index is out of range.
# See also Array#[]

# Example
a = [ "a", "b", "c", "d", "e" ]
a.at(0)     #=> "a"
a.at(-1)    #=> "e"

#

# (12)
bsearch {|x| block } → elem
# Comparison
# Equality
# Advanced explanation, see Ruby docs.
# http://www.ruby-doc.org/core-2.0/Array.html#method-i-bsearch

#

# (13)
clear → ary
# Removal
# Removes all elements from self

# Example:
a = [ "a", "b", "c", "d", "e" ]
a.clear    #=> [ ]

#

# (14)
collect { |item| block } → new_ary
map { |item| block } → new_ary
collect → Enumerator
map → Enumerator
# Creates array
# Invokes the given block once for each element of self
# Creates a new array containing the values returned by the block
# See also Enumerable#collect
# If no block is given, an Enumerator is returned instead

# Example:
a = [ "a", "b", "c", "d" ]
a.map { |x| x + "!" }   #=> ["a!", "b!", "c!", "d!"]
a                       #=> ["a", "b", "c", "d"]

# If used in conjunction with bang !
# it replces the element with the value returned by the block

#

# (15)
combination(n) { |c| block } → ary
combination(n) → Enumerator
# Envoked with a block, yields all combos of length n elements
# from the array and then returns the array itself
# No guarantees about the order combos are yielded

# Example:
a = [1, 2, 3, 4]
a.combination(1).to_a  #=> [[1],[2],[3],[4]]
a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a  #=> [[1,2,3,4]]
a.combination(0).to_a  #=> [[]] # one combination of length 0
a.combination(5).to_a  #=> []   # no combinations of length 5

#

# (16)
compact → new_ary
# Returns a copy of self with all nil elements removed

# Example:
[ "a", nil, "b", nil, "c", nil ].compact
#=> [ "a", "b", "c" ]

# Can be used with bang ! character to permanently modify array

#

# (17)
concat(other_ary) → ary
# Concatenation
# Appends the elements of other_ary to self

# Example:
[ "a", "b" ].concat( ["c", "d"] ) #=> [ "a", "b", "c", "d" ]
a = [ 1, 2, 3 ]
a.concat( [ 4, 5 ] )
a                                 #=> [ 1, 2, 3, 4, 5 ]

#

# (18)
count → int 
count(obj) → int
count { |item| block } → int
# Returns the number of elements
# If no argument is given, counts the number of elements using obj == obj
# It a block is given, counts the number of elements that return true

# Example:
ary = [1, 2, 4, 2]
ary.count                  #=> 4
ary.count(2)               #=> 2
ary.count { |x| x%2 == 0 } #=> 3

# 

# (19)
cycle(n=nil) { |obj| block } → nil 
cycle(n=nil) → Enumerator
# Calls the given block for each element n times for forever if nil is given
# Does nothing is a non-positive number is given or the array is empty
# Returns nil if loop has finished without getting interrupted 
# If no block is given, an Enumerator is returned instead
a = ["a", "b", "c"]
a.cycle { |x| puts x }     # print, a, b, c, a, b, c,.. forever.
a.cycle(2) { |x| puts x }  # print, a, b, c, a, b, c.

#

# (20)
delete(obj) #=> obj or nil
delete(obj) {block} #=> obj or nil
# Deletes items from self that are equal to obj. If items are found, returns
# obj. If items are not found, returns nil. 
# If code block is given, returns result of block if item is not found.
a = ["a", "b", "c", "d", "e"]
a.delete("b") #=> ["a", "c", "d", "e"]
a.delete("z") { "not found" } #=> "not found"

#

# (21)
delete_at(index)
# Self explanatory 
a = ["a", "b", "c", "d", "e"]
a.delete_at(2) #=> ["a", "b", "d", "e"]

#

# (22)
delete_if {|item| block} # returns array
delete_if # use enumerator 
# Deletes every element of self that the block evaluates true for.
# Array is changed every time the block is called, not after the iteration is over.
# Can be used with an enumerator instead:
a = ["a", "b", "c"]
a.delete_if { |x| x >= "b" } # returns ["a"]

#

# (23)
drop(n) # returns new array
# Drops the first n elements and returns the rest of the elements in the array
a = [1, 2, 3, 4, 5]
a.drop(3) # returns [4, 5]

#

# (24)
drop_while {|array| block} # returns new array
drop_while # use enumerator
# Drops elements up to, but not including, the first element for which the
# block returns nil or false. Returns array containing remaining elements.
# Can us an enumerator:
a = [1, 2, 3, 4, 5, 0]
a.drop_while {|i| i < 3} # returns [3, 4, 5, 0]

#

# (25)
each {|item| block} # returns array
each # use enumerator
# Calls block once for each element in self, passing that element as a parameter.
# If no block is given, an enumerator is returned.
a = ["a", "b", "c"]
a.each {|x| print x, " -- "} # returns a -- b -- c -- 

#

# (26)
each_index { |index| block} # returns array
each_index # use enumerator
# Same as Array#each but passes the index of the element instead of the element
# itself. Can use an enumerator instead.
a = ["a", "b", "c"]
a.each_index { |x| print x " -- "} # returns 0 -- 1 -- 2

#

# (27)
empty? # returns true or false

#

# (28)
eql?(other) # returns true or false
# Only returns true if arrays have same content, or it is the same array

#

# (29)
fetch(index) # returns obj
fetch(index, default) # returns obj
fetch(index) { |index| block } # returns obj
# Tries to return the element at position index. 
# If index is outside of array, the first one throws IndexError exception.
# Second returns default
# Third returns the value of invoking the block, passing the index
# Negative values of index count from the end of the array
# Does NOT remove item from array!!
a = [11, 22, 33, 44]
a.fetch(1) # 22
a.fetch(-1) # 44
a.fetch(4, 'cat') # 'cat'
a.fetch(4) { |i| i*i } # 16

#

# (30)
fill(obj) # returns array
fill(obj, start [, length]) # returns array
fill(obj, range) # returns array
fill { |index| block } # returns array
fill(start [, length]) { |index| block } # returns array
fill(range) { |index| block } # returns array 
# First three forms: set selected elements of self (can be array) to obj
# A start of nil is equivalent to zero. A length of nil is equivalent to self.length
# Last three forms: fill array with the value of the block
# Block is passed the absolute index of each element to be filled
# Negative values count from the end of array
a = ["a", "b", "c", "d"]
a.fill("x") # ["x", "x", "x", "x"]
a.fill("z", 2, 2) # ["x", "x", "z", "z"]
a.fill("y", 0..1) # ["y", "y", "z", "z"]
a.fill { |i| i*i } # [0, 1, 4, 9]
a.fill(-2) { |i| i*i*i } # [0, 1, 8, 27]




# Set intersection
# Repetition
# Concatenation
# Array difference
# Appends
# Comparison
# Equality 
# Element reference
# Element assignment
# Removal