#Integer#times can be called on *any* Integer, including those returned by a method
#Array#length returns an Integer - the number of elements in an Array
#
[1,2,3].length
# => 3
#
#Combined with .times ...
[1,2,3,4].length.times do
  puts "Running this code block"
end
# => prints "Running this code block" 4x
#
#
#Integer#times can be used at each step of the loop to get access to the index
#Tells you the position of something in an Array
10.times do |index|
  puts "index is: #{index}"
end
# => prints "index is: #", counting from 0-9
#
#
#Examples
months = ["January", "February", "March",
          "April", "May", "June", "July",
          "August", "September", "October",
          "November", "December"]
months.length.times do |index|
  puts "The month at index #{index} is #{months[index]}."
end
#prints:
#The month at index 0 is January
#The month at index 1 is February
#The month at index 2 is March
#The month at index 3 is April
#The month at index 4 is May
#The month at index 5 is June
#The month at index 6 is July
#The month at index 7 is August
#The month at index 8 is September
#The month at index 9 is October
#The month at index 10 is November
#The month at index 11 is December
#Access the element at index by calling element[index]
#
#
#
#Typing index over and over is tedious, the convention is to name the index variable "i"
#Example
months.length.times do |i|
  puts "The month at index #{i} is #{months[i]}"
end
#
#
#
#Looping with Arrays
#Something I'll be doing a lot, so get used to it.
#
months = ["January", "February", "March",
          "April", "May", "June", "July",
          "August", "September", "October",
          "November", "December"]
months.length.times do |i|
  puts months[i].reverse
end
#Because months[i] is a string, you can use any string methods on it
#This prints the months in order, spelled backwards
#Practice this some more!
#
#
#
#Arbitary Arrays
#We don't know the specific contents of an array before it's given
#Example: arbitrary array of integets and retruning a new array where we add 10 to each element
#
#This is what we want:
add_ten_to_each([0,1,2])
#
#This is how we get it:
def add_ten_to_each(array)
  new_array = []

  array.length.times do |i|
    new_array[i] = array[i] + 10
  end

  new_array
end

my_array = [1,2,3,4,5]
puts "my_array is #{my_array.inspect}"

other_array = add_ten_to_each(my_array)
puts "other_array is now #{other_array.inspect}"
#





