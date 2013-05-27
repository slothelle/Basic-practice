# TODO: Refactor for elegance
def shout_backwards(string)
  return "#{string.upcase.reverse}!!!"
end

# FIXME: This is convoluted. Refactor for clarity.
def squared_primes(array)
  square_all(find_primes(array))
end

def find_primes(array)
  array.find_all do |x| 
    (2..x-1).select{ |i| x % i == 0 }.count == 0
  end
end

def square_all(array)
  array.map{ |p| p*p }
end 



# Driver code... don't edit. This should print a bunch of trues.
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 42, 7, 4]) == [1, 9, 49]
