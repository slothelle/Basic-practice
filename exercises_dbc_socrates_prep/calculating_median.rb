#Exercise: Calculating the median of an array of numbers
#Write a method median which takes an Array of numbers as its input 
#and returns the median value.
#
#
def median(array)
  sorted = array.sort
  total = sorted.length

  #Order of operations...
  return (sorted[(total - 1) / 2] + sorted[total / 2]) / 2.0
end



#What I need to do here is:
#put the numbers in order
#find index of middle number
#print middle number
