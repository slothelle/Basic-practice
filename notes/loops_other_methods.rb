#other looping methods
#socrates
#
#
#Integer#upto
#like times, every Integer in Ruby supports the upto method
1.upto(5) do |i|
  puts i
end

5.upto(10) { |i| puts i}
10.upto(20) { |x| puts "#{x}..."}
11.upto(15) { |x| puts x, "- - -"}
#
#
#
#Integer#downto
5.downto(1) do |i|
  puts i
end
#
#
#
#While
#Run this block of code as long as this condition is true
#unless you want the loop to run forever, you need to be changing something
#in the loop block so that the condition is eventually false
#
#example
my_array = [1,2,3]

#Initialize i
i = 0
#While i is less than the length of my_array
while i < my_array.length
  puts my_array[i]

  i += 1 # Increment of 1
end
#
#
#
#Until
#Run this block of code until this condition is true
#it will continue to run as long as the condition is false
#
#example
my_array = [1,2,3]
i = 0

until i >= my_array.length
  puts my_array[i]

  i += 1
end
#
#
#
#while foobar
  #some code here
#end

#is the same as

#until !foobar
  #some code here
#end
#
#
#
#
#while and until are not commonly use
#we use them to loop until a user takes a specific action
#this is seen in my earlier example where you had to say "bye" to make Grandma stop yelling
#example

def start_game
  command = nil

  until command == 'quit'
    #get the next command
    #update the screen
    #etc
  end
end

