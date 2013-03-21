#comparison operators
puts 5 > 4
puts 3 <= 3
puts 'cat' > 'dog'
puts 'cat' == 'CAT'
puts (2+1) >= 7
#
#determines inequality 
puts 3 != 7
#
#common mistake to use = as comparison
#= is for assignment
#== is for comparison
#
#some conditionals have no expressions
num1 = 5
num2 = 5
puts num1.eql?(num2)
#things with a ? return a true/false statement by comparing against argument
#
#both of these should return true
word = "hello"
puts word.start_with?("h") || word.end_with?("o")
#
#conditional statements can also be formed without an explicit statement 
#examples
if "hello"
  puts "hey"
end
#
num = 5
if num
  puts "five"
end
#ruby has truthy/falsy 
#if any value other than nil or false is the result
#it will output true
#nil means that absolutely nothing exists
#it's not the same as 0, or " "