# A very basic Stack implemented with an array  
# Makes use of the built in #pop and # push methods that exist for arrays.
class Stack
  def initialize
    @store = []
  end

  def max_size
    10
  end 
 
  def push(x)
    raise "Stack Overflow - The stack is full" if self.full?
    @store.push x
  end
 
  def pop
    raise "Stack Underflow - The stack is empty" if self.empty?
    @store.pop
  end
 
  def peek
    @store.last
  end
 
  def empty?
    @store.empty?
  end

  def full?
    @store.length == max_size
  end 
end
