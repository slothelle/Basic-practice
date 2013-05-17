class YourePretty
  def initialize # Building Hash with initialization, split this up?
    @your_personality = {}

    puts "How would you describe yourself in general?"
    puts "Ex: 'nice', 'smart', 'sometimes funny', etc."
    puts "One word or phrase at a time, please."

    descriptor = gets.chomp
    until descriptor == ""
      @your_personality[descriptor] = true
      print "\nNext descriptor (or hit enter to end): > "
      descriptor = gets.chomp
    end

    print "\nWhat about today? How are you feeling today? "

    @your_personality.each do |descriptor, truthy|
      puts "Do you feel #{descriptor} today?"
      print "Type 'yes' or 'no': > "
      response = gets.chomp
        if response.downcase == "no"
          @your_personality[descriptor] = false
        elsif response.downcase == "yes" 
          @your_personality[descriptor] = true
        else 
          print "\nNot sure what you meant, so I'm assuming yes."
          @your_personality[descriptor] = true
        end 
    end
  end

  def print_summary
    print "\n \nSo in summary, today you feel...\n"
    @your_personality.each do |descriptor, truthy|
      if truthy == true
        print "\t* I am #{descriptor}! :D\n"
      else
        print "\t* I am not #{descriptor} :( :( :(\n"
      end 
    end
  end

  def feel_better
    print "\n \nMaybe this will make you feel better!\n \n"
    puts "Even though you don't feel like it today, you are:"
    @your_personality.each do |descriptor, truthy|
      if truthy == false
        print "\t* Very #{descriptor}! :D\n"
      end 
    end
  
    print "\n \nDon't forget it!\n" 
  end 

end

me = YourePretty.new

me.print_summary
me.feel_better