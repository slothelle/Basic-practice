#Chapter 9
#Writing Your Own Methods
#Learn How to Program
#
#
#Improved ask method
#How I would do it
def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if reply == "yes"
        return true
      else
        return false
      end
      break
    else
      puts "Please answer 'yes' or 'no'."
    end
  end

end

ask("Do you like cheese?")
ask("Do you like bread?")
ask("Do you like wine?")
ask("Are you Italian?")

#Another way to write it
def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    return true if reply == yes
    return false if reply == no
    puts "Please answer 'yes' or 'no'."
  end
end

