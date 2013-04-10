# Simple conversion tool based on user input
# Converts pounds to kilos, inches to cm, m, or m with cm remaining

# Needs some polishing

def to_kilos(pounds)
  kilos = pounds.to_i / 2.2
  return "#{kilos} kilos"
end

def to_cm(inches)
  cm = inches.to_i * 2.54
  return "#{cm} centimeters"
end

def to_meters(inches)
   # How do I get this to only show 2 decimals?
  meters = inches.to_i * 0.0254
  return "#{meters} meters"
end

def meters_cm(inches)
  centimeters = inches.to_i * 2.54
  total_centimeters = (centimeters % 100).to_i
  some_math = centimeters.to_i - total_centimeters.to_i
  total_meters = some_math % 99
  if total_meters <= 1
    return "#{total_meters.to_s} meter and #{total_centimeters.to_s} centimeters"
  else 
    return "#{total_meters.to_s} meters and #{total_centimeters.to_s} centimeters"
  end 
end

puts "Hello! What's your name?"
my_name = gets.chomp

puts "Hi, #{my_name}. How old are you?"
my_age = gets.chomp

puts "How tall are you, in inches?"
my_height_inches = gets.chomp

puts "How much do you weight, in pounds?"
my_weight_pounds = gets.chomp

puts "Great, thanks #{my_name}! Let me do some math..."
puts ""

puts "Ok, #{my_name}, you weigh #{my_weight_pounds} pounds, which is also #{to_kilos(my_weight_pounds)}."
puts "You are #{my_height_inches} inches tall, which we can do all sorts of math with."
puts "It's #{to_cm(my_height_inches)}."
puts "Or #{to_meters(my_height_inches)}."
puts "Or! #{meters_cm(my_height_inches)}."
