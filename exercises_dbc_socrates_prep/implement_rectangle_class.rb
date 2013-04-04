# Write four instance methods for rectangle:

# Rectangle#area, which returns the area of the rectangle
# Rectangle#perimeter, which returns the perimeter of the rectangle
# Rectangle#diagonal, which returns the length of the rectangle's diagonal as a Float
# Rectangle#square?, which returns true if the rectangle is a square and false otherwise

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

  def area
    @width * @height
  end

  def perimeter
    (@width * 2) + (@height * 2)
  end

  def diagonal
    Math.sqrt(@width**2 + @height**2)
  end

  def square?
    return true if @width == @height
  end
end

