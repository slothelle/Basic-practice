#Write a method total which takes an Array of numbers as its input 
#and returns their total (sum).

def total(array)
  sum = 0
  array.each do |var|
    sum += var
  end

  sum
end
