#Write a method count_between which takes three arguments as input:
#1. An Array of integers
#2. An integer lower bound
#3. An integer upper bound
#count_between should return the number of integers in the Array between the two bounds,
#including the bounds
#It should return 0 if the Array is empty.

#This gets us partway there
#It doesn't exclude number below the lower, and above the upper
def count_between(array, lower_bound, upper_bound)
  if array.length == 0 || lower_bound > upper_bound
    return 0
  end

  range = (lower_bound..upper_bound).to_a
  array.length
  
end

#This does it! 
#By using include? I am excluding anything not in the Array I created with the range
def count_between(array, lower_bound, upper_bound)
  if array.length == 0 || lower_bound > upper_bound
    return 0
  end

  range = (lower_bound..upper_bound).to_a
  array.select { |x| range.include?(x) }.length 
end



