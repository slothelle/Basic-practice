# Most software (1) takes input, (2) changes it,
# and (3) prints out something to show you how it changed

print "How old are you?"
age = gets.chomp()
print "How tall are you?"
height = gets.chomp()
print "How much do you weight? Wow, personal question."
weight = gets.chomp()

puts "So, you're #{age} years old, #{height} tall, and #{weight} heavy (or light)."