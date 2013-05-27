class Deque
  def initialize
    @store = []
  end

  def push(x)
    @store.push x
  end

  def unshift(x)
    @store.unshift x
  end 
 
  def shift
    raise "Stack Underflow - The stack is empty" if self.empty?
    @store.shift
  end

  def pop
    raise "Stack Underflow - The stack is empty" if self.empty?
    @store.pop
  end 
 
  def top
    @store.first
  end

  def bottom
    @store.last
  end 
 
  def empty?
    @store.empty?
  end
end
