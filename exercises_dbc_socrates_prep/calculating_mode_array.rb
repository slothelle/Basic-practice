#Write a method mode which takes an Array of numbers as its input 
#and returns an Array of the most frequent values.
#
#If there's only one most-frequent value, it returns a single-element Array.

def mode(array)
  mode = []
  array.sort_by! { |num| array.count(num) }
  mode << array.last
  mode
end

my_array = [1, 2, 6, 2, 8, 3, 6, 9, 6, 9, 6]

mode(my_array)