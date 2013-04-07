# Notes on Array documentation
# http://www.ruby-doc.org/core-2.0/Array.html
# http://www.ruby-doc.org/core-1.9.3/Array.html

# - - - - - - - - - - - - - - - - - - - - - - - - 

# ACCESSING ELEMENTS

# (1) 
# To retrieve elements from an array, use the Array#[] method.
# It can take:
#  - single integer argument
#  - pair of arguments (start and length)
#  - a range

# Examples:
arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]

#

# (2)
# Another way to access elements is to use Array#at method

# Examples:
arr = [1, 2, 3, 4, 5, 6]
arr.at(0) #=> 1

#

# (3)
# To raise an error for indicies outside of the bounds,
# or to provide a default value, use Array#fetch

# Examples:
arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops") #=> "oops"

#

# (4)
# Special methods Array#first and Array#last will return
# the first and last elements, respectively 

# Examples:
arr.first #=> 1
arr.last  #=> 6

#

# (5)
# To return the first n elements, use take

# Examples:
arr = [1, 2, 3, 4, 5, 6]
arr.take(3) #=> [1, 2, 3]

# - - - - - - - - - - - - - - - - - - - - - - - - 

# OBTAINING INFORMATION ABOUT AN ARRAY

# (1)
# Arrays keep track of their length at all times
# To query about the number of elements, use:
# length, count, or size 

# Examples:
browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
browsers.length #=> 5
browsers.count #=> 5

#

# (2)
# Use empty? to check if an Array has any elements at all

#Examples:
browsers.empty? #=> false

#

# (3)
# To check if a particular item is in the array, use include?

# Examples:
browsers.include?('Konqueror') #=> false

# - - - - - - - - - - - - - - - - - - - - - - - - 

# ADDING ITEMS TO ARRAYS

# (1)
# Items can be added to the end of an array using Array#push or <<

# Examples:
arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]

#

# (2)
# unshift will add a new item to the beginning of an Array

# Examples:
arr = [1, 2, 3, 4, 5, 6]
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]

#

# (3)
# Use insert to add a new element at any position

# Examples:
arr = [1, 2, 3, 4, 5, 6]
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

# You can insert mutliple items at once using this method:
arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]

# - - - - - - - - - - - - - - - - - - - - - - - - 

# REMOVING ITEMS FROM ARRAYS

# (1)
# pop removes the last element and returns it

# Examples:
arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]

#

# (2)
# shift removes the last element and returns it

# Examples:
arr =  [1, 2, 3, 4, 5]
arr.shift #=> 1
arr #=> [2, 3, 4, 5]

#

# (3)
# To delete an element at particular index, use delete_at

# Examples:
arr =  [2, 3, 4, 5]
arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]

#

# (4)
# To delete a specific element anywhere in the Array, use delete

# Examples:
arr = [1, 2, 2, 3]
arr.delete(2) #=> 2
arr #=> [1,3]

#

# (5)
# compact removes nil values from an array
# This is not permanent, you have to use bang ! to make it so

# Examples:
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, 'bar', 7, 'baz']

# (6)
# uniq removes duplicate values from an array
# This is not permanent, you have to use bang ! to make it so

# Examples:
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]

# - - - - - - - - - - - - - - - - - - - - - - - - 

# ITERATING OVER ARRAYS

# (1)
# each method defines which elements should be iterated over, and how
# This leaves the array unchanged 

# Examples:
arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
# prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]

#

# (2)
# reverse_each will iterate over the elements in reverse order
# Also leaves the array unchanged

# Examples:
words = %w[rats live on no evil star]
str = ""
words.reverse_each { |word| str += "#{word.reverse} " }
str #=> "rats live on no evil star "

#

# (3)
# map method will create a new array based on the original
# Values are modified by the existing block

# Examples:
arr = [1, 2, 3, 4, 5]
arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
arr                   #=> [1, 2, 3, 4, 5]
arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
arr                   #=> [1, 4, 9, 16, 25]

# - - - - - - - - - - - - - - - - - - - - - - - - 

# SELECTING ELEMENTS FROM AN ARRAY

# Elements can be selected from an array according to criteria defined in a block.
# The selection can happen in a destructive or a non-destructive manner.
# While the destructive operations will modify the array they were called on,
# the non-destructive methods usually return a new array with the selected elements,
# but leave the original array unchanged.

# NON-DESTRUCTIVE SELECTION METHODS

# (1-3)
# select, reject, drop_while

# Examples:
arr = [1, 2, 3, 4, 5, 6]
arr.select { |a| a > 3 }     #=> [4, 5, 6]
arr.reject { |a| a < 3 }     #=> [4, 5, 6]
arr.drop_while { |a| a < 4 } #=> [4, 5, 6]
arr                          #=> [1, 2, 3, 4, 5, 6]

#

# DESTRUCTION SELECTION METHODS

# (1-2)
# select! and reject! are the destructive versions of the above

#

# (3)
# delete_if and keep_if 
# Destructive deletion

# Examples:
arr = [1, 2, 3, 4, 5, 6]
arr.delete_if { |a| a < 4 } #=> [4, 5, 6]
arr                         #=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
arr.keep_if { |a| a < 4 } #=> [1, 2, 3]
arr                       #=> [1, 2, 3]