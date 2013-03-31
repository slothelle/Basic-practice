#Write a method longest_string which takes as its input an Array 
#of Strings and returns the longest String in the Array.

def longest_string(array)
  if array.length == 0
    return nil

  else
    array.max
  end
end
