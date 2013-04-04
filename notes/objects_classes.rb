# Objects are bundles of data that read, write, change
# or act on data

# In an array, we have two types of data: (1) length, and (2) contents
# An objects' data and methods follow it around everywhere
# Examples fo methods that act on array data

[1,2,3].length 
[1,2,3].first
[1,2,3].reverse

# Every integer is an object
# The math done is the method of that object
# Examples of methods that act on integers

5 + 4
10 * 10
110 / 2

array = [1,2,3]
array.[](0)
array.[](2)
array.[](3)

# We can't add two Hashes together
# The Hash class hasn't defined a + method

#
#
#

# Classes 
# Class names begin with capital letters
# Examples: Fixnum, Float, String, Array, Hash
# Each class contains instructions for how to create it
# Another way is to think of it as a kind, or a type 
# [1,2,3] is a kind of Array
# {:first_name => "George", :last_name => "Hardy"} is a kind of Hash
# Objects are instances of a class
# When we tell a to create a new instance (object), we are instantiating the class

#
#
#

# Sample program

roger_daltrey = Person.new("Roger Daltrey")
pete_townsend = Person.new("Pete Townsend")
john_entwistle = Person.new("John Entwistle")
keith_moon = Person.new("Keith Moon")

the_who = Band.new("The Who")
the_who.add_member roger_daltrey
the_who.add_member pete_townsend
the_who.add_member john_entwistle
the_who.add_member keith_moon

best_album = Album.new("Quadrophenia")
the_who.add_album best_album

# Person, Band, and Album are all classes that we have to write ourselves
# add_member and add_album are methods we would have to write ourselves

#
#
#

# Object & class vocabulary 
# roger_daltrey and pete_townsend are instances of the Person class
# Person, Band, and Album are classes
# keith_moon is an object
# keith_moon is an instance of the Person class
# the_who is an instance of the Band class
# "The Who", passed to Band.new is an instance of the String class
# add_member is a method on the_who object
