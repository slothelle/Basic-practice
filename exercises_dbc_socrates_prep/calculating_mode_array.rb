#Write a method mode which takes an Array of numbers as its input 
#and returns an Array of the most frequent values.
#
#If there's only one most-frequent value, it returns a single-element Array.

def mode(array)
  array.max_by { |num| array.count(num)}
end
