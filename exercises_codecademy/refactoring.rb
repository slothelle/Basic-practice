# Ruby values programmer productivity over fast programs

ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

#

# One line code 
# Syntax: expression if boolean 
# you can't flip this the other way around

#

# True/false statement returns first string if true, second if false 
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end