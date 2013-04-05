# How to make strings that have variables embedded in them.

my_name = 'Liz Abinante'
my_age = 27
my_height_inches = 65
my_weight_pounds = 125
my_eyes = 'green'
my_hair = 'brown'
my_hair_texture = 'curly'

puts "Let's talk about %s." % my_name
puts "She's %d inches tall" % my_height_inches
puts "She's %d pounds." % my_weight_pounds
puts "She's got %s eyes and %s, %s hair." % [my_eyes, my_hair_texture, my_hair]

puts "If I add %d, %d, and %d, I get %d." % [my_age, my_height_inches, my_weight_pounds, my_age + my_height_inches + my_weight_pounds]

# Another way to do this
puts "Let's talk about #{my_name}."
puts "She's #{my_height_inches} inches tall."
puts "She's #{my_weight_pounds} pounds."
puts "She's got #{my_eyes} eyes and #{my_hair_texture}, #{my_hair} hair."


# Let's try creating methods for conversions
my_name = 'Liz Abinante'
my_age = 27
my_height_inches = 65
my_weight_pounds = 125
my_eyes = 'green'
my_hair = 'brown'
my_hair_texture = 'curly'

def to_kilos(pounds)
  pounds / 2.2
end

def to_cm(inches)
  inches * 2.54
end

def to_meters(inches)
  (inches * 0.0254).to_i
end

puts "When converted, her weight is approximately #{to_kilos(my_weight_pounds).to_i} kilos."
puts "And when you convert her height, she is approximately #{to_cm(my_height_inches).to_i} centimeters tall."
puts "Also known as #{to_meters(my_height_inches)} meters."

centimeters = (my_height_inches * 2.54).to_f
meters = (my_height_inches * 0.0254).to_f
total_centimeters = (centimeters % 100).to_i
some_math = (centimeters - total_centimeters).to_i
total_meters = some_math % 99

<<<<<<< HEAD
puts "65 inches is #{total_meters} meters and #{total_centimeters} centimeters."
=======
puts "65 inches is #{total_meters} meters and #{total_centimeters} centimeters."
>>>>>>> updated
