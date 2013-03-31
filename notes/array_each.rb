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
