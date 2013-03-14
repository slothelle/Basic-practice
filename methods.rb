puts 'Fancy methods practice'
puts ''

puts 'Let\'s go backwards!'
var1 = 'stop'
var2 = 'delivery repaid desserts'
var3 = '... TCELES B HSUP A magic spell?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ''

puts 'I want a fancy alphabet. Don\'t you?'
letteR = 'aAbBcCdDeEfF'
puts letteR.upcase
puts letteR.downcase
puts letteR.swapcase
puts letteR.capitalize
puts ' a'.capitalize
puts 'a'.capitalize
puts letteR
puts ''

puts 'Now we\'ll count characters in your name.'
puts 'What is your full name?'
name = gets.chomp
puts 'Did you know that there are ' + name.length.to_s + ' characters in your name, ' + name + '?'
puts ''

puts 'Now we\'ll count the actual letters in your name.'
puts 'What is your first name?'
nameF = gets.chomp
puts 'What is your middle name?'
nameM = gets.chomp
puts 'What is your last name?'
nameL = gets.chomp
totaL = nameF.length + nameM.length + nameL.length
puts 'Did you know that there are a total of ' + totaL.to_s + ' letters in your name?'