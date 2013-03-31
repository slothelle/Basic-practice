#Write a method smallest_integer which takes as its input an Array 
#of integers and returns the smaller integer in the Array.
#
def smallest_integer(array)
  if array.length == 0
    return nil
  
  elsif array.size == 1 && array.include?(0)
    return 0

  else
    sorted = array.sort
    sorted.first
  end
end