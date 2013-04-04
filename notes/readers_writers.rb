# If a class has instance varibles, one of the most common reqs is that the outside world
# be able to read (and maybe write) to those instance variables
# Since instance variables are only accessible by instance methods by default,
# and not the outside world, we have to define reader and writer methods
# that expose the object's instance variables

# reader and writer methods are often called getters and setters

# Person class
# Here is a method with no readers or writers

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

# What happens if we try to access a Person's first or last name?

nancy = Person.new('Nancy', 'Drew')
puts nancy.first_name

# We get an ugly error:
# NoMethodError: undefined method `first_name' for #<Person:0x007f86 @first_name="Nancy", @last_name="Drew">

# NoMethodError is telling us that we're trying to call a method (first_name)
# on an object (nancy), but that object hasn’t defined any method with that name

#
#
#

# First reader
# Defining an instance of first_name and trying again
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # Remember, @first_name is an instance variable
  # so any instance method can access it 

  def first_name # We have to define the method first_name to call it on an object
    @first_name # Without an implicit return, Ruby returns the last line of the method
  end
end

nancy = Person.new('Nancy', 'Drew')
puts nancy.first_name

#
#
#

# First writer
# How do we support changing a name using our Person class?
# This doesn't work:
nancy = Person.new('Nancy', 'Drew')
nancy.first_name = 'Bess'

# We get this error:
# NoMethodError: undefined method `first_name=' for #<Person:...>
# In this case, we haven't defined first_name=

# So lets try this...

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def first_name= # This gives us an error with the below code, 1 argument for 0
  end
end

nancy = Person.new('Nancy', 'Drew')
nancy.first_name = 'Bess'

# An improved error-less version
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def first_name=(argument)
    puts "first_name= was called with #{argument.inspect}"
  end
end

nancy = Person.new('Nancy', 'Drew')
nancy.first_name = 'Bess'

# If we define a method that ends with =
# Ruby has syntactic sugar that translates what looks like assignment
# (nancy.first_name = 'Bess') into a method call
# So let's use that to our advantage... 

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

nancy = Person.new('Nancy', 'Drew')

old_name = nancy.first_name
nancy.first_name = 'Bess'

puts "Our person's old name was #{old_name}, but it's now #{nancy.first_name}"











