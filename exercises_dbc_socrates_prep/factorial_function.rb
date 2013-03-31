#Write a factorial method which takes as its input a non-negative integer 
#and calculates the factorial of that number.
#
#The factorial of a number is the product of all integers from 1 up to that number.
#Example
#factorial(5) == 5 * 4 * 3 * 2 * 1 == 120

def factorial(n)
  if n == 0
    return 1
  end

  n.downto(1).inject(:*)
 
end