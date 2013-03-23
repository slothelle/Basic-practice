#array operations
#
#every array supports the same set of methods
#doesn't matter what kind of objects are in the array
#array methods are a way of asking an array a question or giving it a command
#
#this is a list of common array operations
#along with examples of how they work
#not an exhaustive list
#see http://www.ruby-doc.org/core-1.9.3/Array.html
#
#
#first - returns first element
#[array].first is the same thing as array[0]
puts [1,2,3].first
puts ["cats"].first
puts [true, "cats", 100].first
#
#
#last - returns last element
puts [1,2,3].last
puts ["cats"].last
puts [true, "cats", 100].last
#
#
#length - returns the number of elements in the array
#returns 0 if empty
puts [].length
puts [1].length
puts [1,2].length
puts [1,2,3].length
#
months = ["January", "February", "March", 
          "April", "May", "June", 
          "July", "August", "September", 
          "October", "November", "December"]
puts months.length
puts months.last
#we know that december is last, but how do we get the last element using index?
puts months[months.length - 1]
#
#
#empty? - returns true/false if the array is/is not empty
puts [].empty?
puts ["cats"].empty?
puts [nil].empty?
puts [1,2,3].empty?
puts [false].empty?
#
array = []
puts array.empty?
#
array = [1,2,3]
puts array.empty?
#
#
#include - takes any object and returns true/false if it is/is not part of the array
#equivalent of asking "is this guy one of your elements?"
puts [1,2,3].include?(1)
puts [1,2,3].include?("cats")
#
foo = "pants"
puts [1,2,3,foo].include?("pants")
#
desserts = ["pie", "cake", "scone"]
puts desserts.include?("steak")
#
#
#[array].join
#takes a string called a separator as its input and returns a "new" string
#"new" string is formed by (a) converting each element of array into string
#and (b) combining them into a single string separated by separator
puts [1,2,3].join(", ")
#
puts [2012, 12, 31].join('-')
#
#can join different types of objects
puts [:foo, 'bar', 10, '20'].join('---')
#
#when there is not separator, it will concatenate 
puts [1,2,3].join
#
#
#[array].split
#inverse of [array].join
#takes separator as input just like join, but returns differently
#returns an array whose elements are the parts of the string that were separated by the separator 
puts "1,2,3".split(',')
#prints:
#1
#2
#3
#
puts "1,2,3".split(',').inspect
#["1", "2", "3"]
#
puts "1 + 2 + 3".split(' + ').inspect
#prints same as above
#
puts "2012-12-31".split('-').inspect
#
puts "foobar".split('').inspect
#["f", "o", "o", "b", "a", "r"]
#
