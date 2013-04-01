#Incorporate a loop in here to prompt user to answer questions correctly

puts "Knitting pattern generator (prototype!)"
puts "We're going to try and make a hat pattern."
puts "What is your gauge? (The number of stitches per inch)"
gauge = gets.chomp
puts "What is the circumference of your head?"
circumference = gets.chomp
puts "Are you going to use a 1x1 or 2x2 ribbing for your border?"
ribbing = gets.chomp
puts "Ok, I'm thinking. Give me a minute!"
puts ""

def hat(gauge, circumference, ribbing)
  if ribbing == "1x1"
    #you'll need a multiple of 2, check gauge math
  elsif ribbing == "2x2"
    #you'll need a multiple of 4, check gauge math
  else
    puts "Please choose a 1x1 or 2x2 ribbed border."
  end
end

puts "A hat pattern for me"
puts "By me, and Ruby"
puts ""

#
#
#
#example of using my own method and modulu to determine multiple
def cast_on(gauge_inch, circumference)
  if gauge_inch * circumference % 4 == 0
    return "Hooray, have a multiple of 4."
  else 
    return "Sorry, you need a multiple of 4."
  end
end

puts cast_on(6, 24)