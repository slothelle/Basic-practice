class Queue
  def initialize
    @store = []
  end

  def push(x)
    @store.push x
  end
 
  def shift
    raise "Stack Underflow - The stack is empty" if self.empty?
    @store.shift
  end
 
  def peek
    @store.first
  end
 
  def empty?
    @store.empty?
  end
end
