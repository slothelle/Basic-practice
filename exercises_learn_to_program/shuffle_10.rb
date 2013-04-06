# Write a shuffle method that takes an array 
# and returns a totally shuffled version

def shuffle(array)
  array.sort_by{rand}
end