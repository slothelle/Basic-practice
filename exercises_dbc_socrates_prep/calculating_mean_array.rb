#Write a method mean which takes an Array of numbers as its input 
#and returns the average (mean) value as a Float.
#
#
def mean(array)
  sum = 0
  array.each do |var|
    sum += var
  end

  sum.to_f / array.length
end


