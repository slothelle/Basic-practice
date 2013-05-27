def to_roman(num)
  string = ""
  array = []
  remainder = num

  write_num = num / 1000
  remainder = remainder - (write_num * 1000)
  if write_num >= 1
    string = "M" * write_num
    array << string
  end

  write_num = remainder / 500
  remainder = remainder - (write_num * 500)
  if write_num >= 1
    string = "D" * write_num
    array << string
  end

  write_num = remainder / 100
  remainder = remainder - (write_num * 100)
  if write_num >= 1
    string = "C" * write_num
    array << string
  end

  write_num = remainder / 50
  remainder = remainder - (write_num * 50)
  if write_num >= 1
    string = "L" * write_num
    array << string
  end

  write_num = remainder / 10
  remainder = remainder - (write_num * 10)
  if write_num >= 1
    string = "X" * write_num
    array << string
  end

  write_num = remainder / 9
  remainder = remainder - (write_num * 9)
  if write_num == 1
    array << "IX"
  end

  write_num = remainder / 5
  remainder = remainder - (write_num * 5)
  if write_num >= 1
    string = "V" * write_num
    array << string
  end

  write_num = remainder / 4
  remainder = remainder - (write_num * 4)
  if write_num == 1
    array << "IV"
  end
      
  write_num = remainder / 1
  remainder = remainder - (write_num * 1)
  if write_num >= 1
    string = "I" * write_num
    array << string
  end
 
  array.to_s
end

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?
