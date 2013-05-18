def english_number(number, number_str="hundred", index=0)
  return number_str if number == 0 
  
  num_word = {"zero" => 0, "one" => 1, "two" => 2, "three" => 3,    # ones
              "four" => 4, "five" => 5,"six" => 6, "seven" => 7,
              "eight" => 8, "nine" => 9,
              "ten" => 10, "twenty" => 20, "thirty" => 30,          # tens
              "forty" => 40, "fifty" => 50, "sixty" => 60,
              "seventy" => 70, "eighty" => 80, "ninety" => 90,
              "eleven" => 11, "twelve" => 12, "thirteen" => 13,     # teens
              "fourteen" => 14, "fifteen" => 15, "sixteen" => 16,
              "seventeen" => 17, "eighteen" => 18, "nineteen" => 19}

  do_math = [100, 10, 1]
  math_index = do_math[index]

  write_me = number/math_index
  amount_left = number - write_me * math_index
  
  if number > 100
    number_str = "#{num_word.key(write_me)} #{number_str}"
    english_number(amount_left, number_str, index+=1)
  elsif math_index == 1 && amount_left == 0
    number_str = "#{number_str} #{num_word.key(write_me)}"
  elsif write_me == 1 && amount_left > 0
    write_me += 10
    number_str = "#{number_str} #{num_word.key(write_me)}"
  elsif write_me < 10 && math_index != 2
    write_me *= 10
    number_str = "#{number_str} #{num_word.key(write_me)}"
    english_number(amount_left, number_str, index+=1)
  else 
    number_str = "#{number_str} #{num_word.key(write_me)}"
    english_number(amount_left, number_str, index+=1)
  end
end

p english_number(172)
# p english_number(680)
# p english_number(917)
# p english_number(111)
# p english_number(229)
# p english_number(718)