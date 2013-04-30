# There is also an Enumerable method for this,
# but this is just talking about the Array#select and Array#select! methods

ary = [1, 534, 95328, 43278, 7, 78, 821, 27, 26, 19, 4]
new_ary = ary.select { |num| num > 319 }
puts new_ary.inspect

arr = [10, 15, 20, 36, 18, 21, 90, 45]
puts "original array: #{arr.inspect}"
# original array: [10, 15, 20, 36, 18, 21, 90, 45]

arr.select! { |num| num % 5 == 0 }
puts "modified array: #{arr.inspect}"
# modified array: [10, 15, 20, 90, 45]

letters = %w{a bee cat dot e fix gut h i ii o u ee}
vowels = letters.select { |l| l =~ /[aeiou]/ }
puts "this is your array on vowels: #{vowels.inspect}"
# this is your array on vowels: ["a", "bee", "cat", "dot", "e", "fix", "gut", "i", "ii", "o", "u", "ee"]