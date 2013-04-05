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
   # How do I get this to only show 2 decimals?
  inches * 0.0254
end

puts "When converted, #{my_name}'s weight is approximately #{to_kilos(my_weight_pounds).to_i} kilos."
puts "And when you convert her height, she is approximately #{to_cm(my_height_inches).to_i} centimeters tall."
puts "Also known as #{to_meters(my_height_inches)} meters."

centimeters = (my_height_inches * 2.54).to_f
meters = (my_height_inches * 0.0254).to_f
total_centimeters = (centimeters % 100).to_i
some_math = (centimeters - total_centimeters).to_i
total_meters = some_math % 99

puts "65 inches is #{total_meters} meters and #{total_centimeters} centimeters."
