#Learn to Program
#Chapter 7, Flow Control Exercises
#
#"99 Bottles of Beer on the Wall"
beer_start = 99
beer_now = beer_start

while beer_now > 82
  puts "#{beer_now.to_s} bottles of beer on the wall, #{beer_now.to_s} bottles of beer!"
  beer_now = beer_now - 1

  puts "Take one down, pass it around, #{beer_now.to_s} bottles of beer on the wall."
end
#
#
#Deaf Grandma
#How I did it
puts "Hello, Sonny, how are you?".upcase
reply = gets.chomp

while reply != "Bye".upcase
  if reply == "BYE"
    puts "Bye sweetie!".upcase 
    break
  end

  if reply == reply.upcase
    puts "No, not since #{1930 + rand(21)}!".upcase
  else 
    puts "Huh?! Speak up, sonny!".upcase
  end
  reply = gets.chomp
end
#
#How the book does it
#Note the use of "while true" and the multiple if statements
#This also doesn't require me to type "reply = gets.chomp twice"
#My random year method is a little bit better
puts "Hello Sonny, how are you?".upcase

while true 
  reply = gets.chomp

  if reply == "BYE"
    puts "Bye sweetie!".upcase
    break
  end

  if reply != reply.upcase
    puts "Huh? Speak up, sonny!".upcase
  else
    year = 1930 + rand(21)
    puts "No, not since #{year}!".upcase
  end
end
#
#
#Extended Grandma
#Using the "while true" set up from above
#Pulled the reply_count section from answer appendix
puts "Hello Sonny, how are you?".upcase
while true
  reply = gets.chomp

  if reply == "BYE"
    reply_count = reply_count + 1
  else
    reply_count = 0
  end

  if reply_count >= 3
    puts "BYE SWEETIE!"
    break
  end

  if reply != reply.upcase
    puts "Huh?! Speak up sonny!".upcase
  else reply
    puts "No, not since #{1930 + rand(21)}!".upcase
  end

end
#
#
#
#Leap years
puts "Pick a year, anything with 4 digits will work here."
start_year = gets.chomp.to_i

puts "Thank you! Now pick an ending year."
end_year = gets.chomp.to_i

puts "These are the leap years."
year = start_year

while year <= end_year

  if year % 4 == 0
    if year % 100 != 0 || year % 400 == 0
      puts year
    end
  end

  year = year + 1
end