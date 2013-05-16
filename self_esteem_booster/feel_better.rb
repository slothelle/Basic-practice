# def who_are_you
#   p "Hi there. What's your name?"
#   name = gets.chomp
# end 

# def describe_yourself
#   your_personality = {}

#   p "How would you describe yourself?"
#   p "Ex: 'nice', 'smart', 'sometimes funny', etc."
#   p "One word or phrase at a time, please."

#   descriptor = gets.chomp

#   until descriptor == ""
#     your_personality[descriptor] = true
#     p "Next descriptor (or hit enter to end):"
#     descriptor = gets.chomp
#   end 

#   your_personality
# end 

def how_do_you_feel_today
  your_personality = {}

  puts "How would you describe yourself in general?"
  puts "Ex: 'nice', 'smart', 'sometimes funny', etc."
  puts "One word or phrase at a time, please."

  descriptor = gets.chomp

  until descriptor == ""
    your_personality[descriptor] = true
    print "\nNext descriptor (or hit enter to end): > "
    descriptor = gets.chomp
  end 

  print "\nWhat about today? How are you feeling today? "

  your_personality.each do |descriptor, truthy|
    puts "Do you feel #{descriptor} today?"
    print "Type 'yes' or 'no': > "
    response = gets.chomp
    if response.downcase == "no"
      your_personality[descriptor] = false
    else 
      your_personality[descriptor] = true
    end 
  end 

  print "\n \nSo in summary, today you feel...\n"
  your_personality.each do |descriptor, truthy|
    if truthy == true
      print "\t* I am #{descriptor}! :D\n"
    else
      print "\t* I am not #{descriptor} :( :( :(\n"
    end 
  end

  print "\n \nMaybe this will make you feel better!\n \n"
  puts "Even though you don't feel like it today, you are:"
  your_personality.each do |descriptor, truthy|
    if truthy == false
      print "\t* Very #{descriptor}! :D\n"
    end 
  end

  print "\n \nDon't forget it!\n" 
end 

how_do_you_feel_today