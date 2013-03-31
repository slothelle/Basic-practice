#Write a method shortest_string which takes as its input an Array of 
#Strings and returns the shortest String in the Array.
#
#
def shortest_string(array)
  if array.length == 0
    return nil

  else 
    array.min_by{ |x| x.size }
  end
end