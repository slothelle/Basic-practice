def palindrome?(sentence)
  downcase_no_spaces = sentence.downcase.gsub(" ", "")
  downcase_no_spaces == downcase_no_spaces.reverse
end

a = "Race cAr"
b = "never Odd or EVEN"

puts palindrome?(a)
puts palindrome?(b)
