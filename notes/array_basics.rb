#arrays
#ordered list, like months in the year
#individual items of an array are elements or members
#
#arrays are good at answering questions like
#what's the first/last/fourth thing on the list?
#how long is the list?
#is this empty?
#
#inspect prints the array
powers_of_ten = [1,10,100]
puts powers_of_ten.inspect
#
#without inspect, prints as individual lines
powers_of_ten = [1,10,100]
puts powers_of_ten
#
#one line at a time
puts [].inspect
puts ["apples"].inspect
puts [1,2,3].inspect
puts ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"].inspect
puts [10, "cats", 4.5, "piano"].inspect
#
dummy = "foobar"
puts [1, 2, dummy].inspect
#
#can put content of array on separate lines
months = ["January", "February", "March", 
          "April", "May", "June", 
          "July", "August", "September", 
          "October", "November", "December"]
puts months[0]
puts months[1]
puts months[11]
month_number = 5
puts months[month_number]
#
#can also change the value of arrays
array = [1,2,3]
puts "array[2] is #{array[2]}"
#
array[2] = "apples"
puts "array[2] is now #{array[2]}"
#
#
#
#you can also assign things to the slots in your array
#they don't have to be in order
#example
my_array = []
my_array[3] = "cheese"
my_array[0] = "milk"
my_array[2] = "bread"
my_array[1] = "rice"
puts my_array
#
#
#
#array vocabulary
#the string "January" is the first element of the array months
#the string "January" is at index 0
#the string "December" is the last element of the arrany months
#the string "December" is at index 11
#the array months has 12 elements
#the value at index 3 is "April", which is the fourth element
