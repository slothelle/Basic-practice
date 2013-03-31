#exercises from Learn How to Program
#Chapter 8, Arrays and Iterators
#
#
#
#Building and sorting an Array
puts "What are your favorite colors?"
colors = []

while true
  color = gets.chomp
  
  if color == ""
    break
  end

  colors.push color
end

puts "Thank you! Here is a list of your favorite colors:"
puts colors

puts "And here they are alphabetzed... "
puts colors.sort

puts "Is #{colors.last} your least favorite color?"
puts "I really like colors! #{colors.join(", ").capitalize}! I love them all!"
#
#
#
#Table of contents
#My original one 
line_width = 60
puts ("Table of Contents".center(line_width))
puts ""
puts ("Chapter 1: Surviving Ruby".ljust(line_width/2) + "page 1".rjust(line_width/2))
puts ("Chapter 2: Methods and objects".ljust(line_width/2) + "page 81".rjust(line_width/2))
puts ("Chapter 3: Pie day".ljust(line_width/2) + "page 314".rjust(line_width/2))
puts ""
puts ("The End".center(line_width))
puts ""
#
#Now lets use an Array!
line_width = 60
title = "Table of Contents"
chapters = [["Chapter 1: Surviving Ruby", "page 1"],
            ["Chapter 2: Methods and objects", "page 8"],
            ["Chapter 3: Pie day", "page 314"]]

puts title.center(line_width)
chapters.each do |toc|
  puts "#{(toc).join(" ..... ").center(line_width)}"
end
#
#Example in the book actually separates the elements in the Array
#Less repetitive typing here
title = "Table of Contents"
chapters = [["Surviving Ruby", "1"],
            ["Methods and objects", "8"],
            ["Pie day", "314"]]

puts title.center(60)
puts 
chapters.each_with_index do |chapter, idx|
  name, page = chapter
  chapter_num = idx + 1
  beginning = "Chapter #{chapter_num}: #{name}"
  ending = "page #{page}"

  puts beginning.ljust(30) + ending.rjust(20)
end