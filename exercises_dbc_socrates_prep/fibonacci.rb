# Check, if a number i is part of the fibonacci sequence.

# Things I need to do:
# (1) create an array of Fibonacci numbers up to i
# (2) stop generating Fibonacci numbers when we get to i, or when we pass it
# (3) test i

# This doesn't work 
# Returns false for 89, which I know to be true 
# So lets try another loop

def is_fibonacci?(i)
  fib_array = [0, 1]

  1.upto(i) do
    last_1, last_2 = fib_array.pop(2)
    fib_array.push(last_1, last_2, last_1 + last_2)
  end

  return true if i == fib_array.last
  return false 
end

#
#
#

# This works! 

def is_fibonacci?(i)
  # Start with a lil baby array holding the first two Fibonacci numbers
  fib_array = [0, 1] 

  # Run a loop so I'm generating Fibonacci numbers up to i (and not any higher)
  while i > fib_array.last 

    # Now that we've done the math, 
    # we can remove the last 2 elements from array using pop
    last_1, last_2 = fib_array.pop(2)

    # pop is permament! Have to add the last 2 elements back
    # and create a new element (i) by adding them
    fib_array.push(last_1, last_2, last_1 + last_2) 
  end

  # Now we test the results of our loop
  return true if i == fib_array.last
  return false 

end