#FizzBuzz is a classic programming exercise.
#Write a method called super_fizzbuzz which takes as its input an Array of integers.
#It should return a "fizzbuzzed" Array, i.e., the array is identical to the input 
#with the following substitutions:
#
#Multiples of 3 should be replaced with the string "Fizz"
#Multiples of 5 should be replaced with the string "Buzz"
#Multiples of 15 should be replaced with the string "FizzBuzz"
#
#
#
#Not the most eloquent, but I did it all on my own. 

def super_fizzbuzz(array)
  array.collect do |var|
    if var % 15 == 0
      var = "FizzBuzz"
    elsif var % 3 == 0
      var = "Fizz"
    elsif var % 5 == 0
      var = "Buzz"
    else
      var = var
    end
  end
end