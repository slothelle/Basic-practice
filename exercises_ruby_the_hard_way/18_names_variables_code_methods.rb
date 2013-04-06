# Methods do 3 things
# (1) name pieces of code that way variables name strings and numbers
# (2) take arguments the way your scripts take ARGV
# (3) using 1 and 2, they make mini scripts or tiny commands

def puts_two(arg1, arg2) 
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def puts_one(arg1)
  puts "arg1: #{arg1}"
end

def puts_none()
  puts "I got nothin'."
end

puts_two("Zed", "Shaw")
puts_one("First!")
puts_none()

# Method checklist
# Does your method definition start with def?
# Does your method name have only characters and underscores?
# Did you put open parenthesis right after the method name?
# Did you put your arguments after the parenthesis separated by commas?
# Did you make each argument unique?
# Did you put a close parenthesis after the arguments?
# Did you indent all lines of code you want in the method 2 spaces?
# Did you close your method body by typing "end"?

# When you run a method, check these:
# Did you call/use/run this method by typing its name?
# Did you put ( character after the name to run it?
# Did you put the values you want into the parenthesis separated by commas?
# Did you end the method call with a ) character?