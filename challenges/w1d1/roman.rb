def to_roman(num)
  roman_numeral = ""

  numbers = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
              100 => "C" , 90 => "XC", 50 => "L", 40 => "XL", 10 => "X",
              9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

  numbers.each do |number, roman|
    while num >= number
      roman_numeral << roman 
      num -= number 
    end
  end 
  roman_numeral 
end

puts to_roman(99)
puts to_roman(104)

# Original code with Anna Marie
# Using recursion and if/else statements

# Did not handle 900, 400, 90, or 40 because I am dumb
# and didn't realize those were special case numbers

# def to_roman(num)
#   string = ""
#   array = []
#   remainder = num

#   write_num = num / 1000
#   remainder = remainder - (write_num * 1000)
#   if write_num >= 1
#     string = "M" * write_num
#     array << string
#   end

#   write_num = remainder / 500
#   remainder = remainder - (write_num * 500)
#   if write_num >= 1
#     string = "D" * write_num
#     array << string
#   end

#   write_num = remainder / 100
#   remainder = remainder - (write_num * 100)
#   if write_num >= 1
#     string = "C" * write_num
#     array << string
#   end

#   write_num = remainder / 50
#   remainder = remainder - (write_num * 50)
#   if write_num >= 1
#     string = "L" * write_num
#     array << string
#   end

#   write_num = remainder / 10
#   remainder = remainder - (write_num * 10)
#   if write_num >= 1
#     string = "X" * write_num
#     array << string
#   end

#   write_num = remainder / 9
#   remainder = remainder - (write_num * 9)
#   if write_num == 1
#     array << "IX"
#   end

#   write_num = remainder / 5
#   remainder = remainder - (write_num * 5)
#   if write_num >= 1
#     string = "V" * write_num
#     array << string
#   end

#   write_num = remainder / 4
#   remainder = remainder - (write_num * 4)
#   if write_num == 1
#     array << "IV"
#   end
      
#   write_num = remainder / 1
#   remainder = remainder - (write_num * 1)
#   if write_num >= 1
#     string = "I" * write_num
#     array << string
#   end
 
#   array.to_s
# end