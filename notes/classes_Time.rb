# Chapter 12, Learn to Program
# New Classes of Objects

# Ruby has a bunch of built in classes
# We've used String, Integer, Float, Array, File, and Dir 

# We don't typically use Array.new or String.new to create
# new arrays and strings because we can use [] and ""
# You can't do Integer.new (it doesn’t know what integer to create)

#
#
#

# Time class 
# This has some issues in older pre 1.9 versions of Ruby
# due to the epoch in the 1970s
# But we're over it

# Time objects represent moments in time 
# You can add and subtract just like you do with integers 
# Example: adding 1.5 to a time makes a new time 1.5 seconds later

time = Time.new
time2 = time + 60 # Adds a minute to existing time

# You can also figure out the time for a specific moment 

puts Time.local(2000, 1, 1)
puts Time.local(1985, 10, 26)

# Parenthesis group the parameters to local together 
# The more paramteters you add to local, the more accurate it becomes

# You can avoid time zones and daylight savings time by using GMT

puts Time.gm(1955, 11, 5)

#
#
#

# You can also compare times using comparison methods 
# An earlier time is less than a later time 
# You can subtract one from the other to figure out
# the number of seconds difference

# Ruby does provide other classes such as Time, DateTime, and Date

# A few things to try (after I upgrade Ruby on my computer)

# (1) One billion seconds
# Find out the exact second you were born
# Figure out when you will turn one billion seconds old

# (2) Happy birthday
# Ask what year a person was born in, then the month
# Figure out how old they are, and give them a big SPANK! for each birthday
