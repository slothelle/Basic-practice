# Ruby comes with shorthand to define reader and writer methods
# so that an outside object can read and write to that object's 
# instance variables

# attr_reader
# Calling attr_reader automatically creates a reader method
# Two class definitions, both the same

# (1)
# Manual way of defining a reader, it's verbose
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end
end

# (2)
# The built-in way, less verbose
class Person
  attr_reader :first_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

# Calling attr_reader :first_name at the top of the class definition
# automatically creates a reader called first_name, 
# which returns the first_name instance variable 

# It will *still* throw a method error if you try and write to it

#
#
#

# attr_writer
# Calling attr_writer - SURPRISE - creates a writer method 
# Two class definitions, both serve the same functions

# (1)
# Manual
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end
end

# (2)
# Built-in way
class Person
  attr_writer :first_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

#
#
#

# attr_accessor
# Like calling both attr_writer and attr_reader for the given instance variable
# 3 ways to do it, they are equivalent

# (1) 
# Manual definitions for both 
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end
end

# (2) 
# Inserting attr_reader and attr_writer separately on the same instance varible
class Person
  attr_reader :first_name
  attr_writer :first_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

# (3)
# Calling attr_accessor on the instance varible
class Person
  attr_accessor :first_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

#
#
#

# Some thoughts on using attr_accessor ...

# You rarely want to give both read and write access to every instance variable
# Example: if an object stored a timestamp, would you want that changed?

# When particulars of your implementation are easily accessible,
# people will depend on them
# Makes it hard to reason about your code
# You can't predict what details people will rely on

# Example: if an instance variable was an Array, but later changed to a Hash,
# any other program or library that relied on it being an Array would break
# If you defined your own reader and writers, which dictated how
# the outside world was allowed to interact with your class
# you'd be free to change the particulars of your implementation 
# so long as the reader and writer remained the same

# Best to take a more judicious approach 
# Only use attr_accessor for instance variables
# that you know you want to open up to the outside world
# but leave them closed off by default
# Consider writing custom readers and writers which have more appropriate names
# The above idea is called information hiding

# Information hiding: http://en.wikipedia.org/wiki/Information_hiding








