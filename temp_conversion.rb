puts "What temperature would you like to convert from celsius to fahrenheit?"
celsius = gets.chomp

fahrenheit = (celsius.to_i * 9 / 5) + 32

puts "#{celsius} degrees in celsius is #{fahrenheit} degrees fahrenheit."
