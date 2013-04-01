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


#
#
#
#Old-school Roman numerals
def old_roman(number)
  roman = ""

  roman = roman + "M" * (number         / 1000)
  roman = roman + "D" * (number % 1000  / 500)
  roman = roman + "C" * (number % 500   / 100)
  roman = roman + "L" * (number % 100   / 50)
  roman = roman + "X" * (number % 50    / 10)
  roman = roman + "V" * (number % 10    / 5)
  roman = roman + "I" * (number % 5     / 1)
  roman
end

old_roman(1999)

#
#
#
#Modern Roman numerals
def modern_roman(number)
  thousands = (number         / 1000)
  hundreds =  (number % 1000  / 100)
  tens =      (number % 100   / 10)
  ones =      (number % 10)

  roman = "M" * thousands

  if hundreds == 9
    roman = roman + "CM"
  elsif hundreds == 4
    roman = roman + "CD"
  else
    roman = roman + "D" * (number % 1000 / 500)
    roman = roman + "C" * (number % 500 / 100)
  end

  if tens == 9
    roman = roman + "XC"
  elsif tens == 4
    roman = roman + "XL"
  else
    roman = roman + "L" * (number % 100 / 50)
    roman = roman + "X" * (number % 50 / 10)
  end

  if ones == 9
    roman = roman + "IX"
  elsif ones == 4
    roman = roman + "IV"
  else
    roman = roman + "V" * (number % 10 / 5)
    roman = roman + "I" * (number % 5 / 1)
  end

  roman
end

puts modern_roman(1999)
puts modern_roman(2013)
puts modern_roman(1897)
      
      
