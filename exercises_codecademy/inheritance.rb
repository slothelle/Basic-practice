# Ruby can only have one superclass (parent class)!

# Inheritance
# "is-a" relationship

# One class takes on methods and attributes from another

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

# SuperBadError inherits from ApplicationError
class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

#
#
#

# Override
# You can use Inheritance to override the methods and arritbutes
# of the parent class 
# Child method/attribute will override parent 

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature # Inherits from Creature
  def fight # Override parent method
    return "Breathes fire!"
  end
end

#
#
#

# Super 
# Use super to access the parent class original method
# Tells your prog to look at the parent class (superclass!) and find the method/attribute
# If it exists, it will use the parent method/attribute

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    super # Tells the program to look at Creature class for fight method and run whatever that lists 
  end
end

#

# Super (another example) and class variable 
class Message

  @@messages_sent = 0 # counts the number of messages sent

  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent = @@messages_sent += 1 # adds one for each instance
  end
end 

class Email < Message
  def initialize(from, to)
    super
  end
end

my_message = Message.new("from", "to")

