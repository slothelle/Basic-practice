#Write a method largest_integer which takes as its input an Array 
#of integers and returns the largest integer in the Array.
#
#Did this one all on my own with no Googling!
def largest_integer(array)
  if array.length == 0
    return nil
  
  elsif array.size == 1 && array.include?(0)
    return 0

  else
    sorted = array.sort
    sorted.last
  end
end