# We've learned about a handful of standard Ruby operators/methods
# (1) mathematical
# (2) boolean: <, >, ==
# (3) conversion: to_i, to_f, etc

# Different methods mean different things
# depending on what they are paired with

# Example:
# + means integer addition when we're talking with Fixnums
5 + 4 # => 9

# But it means 

# We can change the meaning of operators for our own custom classes

#
#
#

# What does "the same" mean?

# Consider a Rectangle class, which as a width and height:
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end
end

# What it should mean for two Rectangles to be "the same rectangle"?
# We can choose.
# There are 3 different ways we might say two Rectangle objects are "the same"
# (1) If they're references to the same instance of Rectangle
# (2) The first rectangle's height/width is equal to the second
# (3) If the first rectangle can be rotated/moved to overlap exactly w/ second
# Which one we want depends on how we're using the Rectangle object
# We do this by re-defining a custom == instance method in our Rectangle class

#
#
#

# Re-defining "the same"

# The default behavior of == is "instance equality"
# Two objects are "the same" if they reference the exact same object
# This is equivalent to (1) on the list up there ^^

rectangle1 = Rectangle.new(10, 10)
rectangle2 = Rectangle.new(10, 10)
rectangle3 = rectangle1

puts rectangle3 == rectangle1 # => true
puts rectangle2 == rectangle1 # => false

# Probably not what we want.

# What about (2), where two rectangles are the same
# if they have the same width/height?

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def ==(other)
    other.width == self.width && other.height == self.height
  end
end

puts Rectangle.new(100, 10) == Rectangle.new(100, 10) 
# => true, but false with default ==

puts Rectangle.new(100, 10) == Rectangle.new(10, 100) # => false

# Which side is width and which is height are arbitrary 

# Now (3): where the rectangle can be rotated/moved to match exactly

class Rectangle

  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def ==(other)
    (other.width == self.width && other.height == self.height) ||
    (other.height == self.width && other.width == self.height)
  end

end

puts Rectangle.new(100, 10) == Rectangle.new(100, 10) # => true
puts Rectangle.new(100, 10) == Rectangle.new(10, 100) # => true

#
#
#

# Other Boolean Operators 


