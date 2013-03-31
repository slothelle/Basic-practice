#Array#each
#a more concise way to write times. do |i|
#tells the loop to run for each element in the Array
#
#each is an Array method
#methods like each that act like loops are often called iterators
#iterators are always followed by a block (some code wrapped inside do...end)
#
#
languages = ["English", "Spanish", "French", "Ruby"]

languages.each do |l|
  puts "I love #{l}!"
  puts "Don't you?"
end
#for each object in languages, point the variable lang to the object
#and then do everythingI tell you, until you come to end
#vertical bars identify which variable to use to feed in the objects in the Array
#
#
names = ["Alex", "Cassie", "Stephanie"]

names.each do |name|
  puts name
end
#
#
#
#Re-writing previous lessons
#array_sum
def array_sum(array)
  sum = 0
  array.each do |element|
    sum += element
  end

  sum
end

puts array_sum([10, 20, 30, 100])
puts array_sum([])
puts array_sum([-1, 1])
#
#
#
#array_reverse
def array_reverse(array)
  results = []
  array.each do |item|
    results << item.reverse
  end

  results
end

puts "Some examples..."
puts array_reverse(["Nancy Drew", "Frank Hardy"]).inspect
puts array_reverse(['Nancy Drew', 'Frank Hardy']).inspect
puts array_reverse(['racecar'])

my_array = ['pineapple', 'mango', 'coconut']
puts ""
puts "What if we call array_reverse twice, on itself?"
puts array_reverse(my_array).inspect
puts array_reverse(array_reverse(my_array)).inspect
#
#
#
#add_ten_to_each
def add_ten_to_each(array)
  new_array = []

  array.each do |x|
    new_array << (x + 10)
  end

  new_array
end

my_array = [1,2,3,4,5]
puts "my_array is #{my_array.inspect}"

other_array = add_ten_to_each(my_array)
puts "other_array is #{other_array.inspect}"











