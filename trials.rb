#learn how to program, exercise 6.2

#using chomp to remove 'enter' stroke
#fancy methods to change user input 
puts 'Hey, how are you doing today?'
emote = gets.chomp
puts 'It\'s always good to hear that someone feels ' + emote + '.'
puts 'How do you feel about My Little Ponies?'
pony = gets.chomp
puts 'What is this "' + pony.upcase + '" bull shit?'
follow = gets.chomp
puts '"' + follow.upcase + '"? Absolutely not. You\'re fired.' 
puts ''

#formatting things super fancy with line width commands
line_width = 90
puts ('Table of Contents'.center(line_width))
puts ''
puts ('Chapter 1: Surviving Ruby'.ljust(line_width/2) + 'page 1'.rjust(line_width/2))
puts ('Chapter 2: Methods and objects'.ljust(line_width/2) + 'page 81'.rjust(line_width/2))
puts ('Chapter 3: Pie day'.ljust(line_width/2) + 'page 314'.rjust(line_width/2))
puts ''
puts ('The End'.center(line_width))
puts ''