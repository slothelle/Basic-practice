def random_select(array, n)
  result = []
  
  n.times do 
    result.push(array[rand(array.length)])
  end
  
  result
end

# Can't use sample here, which was my first go to.
# Create a method 'random_select' which,
# when given an array of elements (array) and a number (n),
# returns n randomly selected elements from that array.