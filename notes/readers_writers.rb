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
<<<<<<< HEAD
# on an object (nancy), but that object hasn’t defined any method with that name
=======
# on an object (nancy), but that object hasn’t defined any method with that name
>>>>>>> new
