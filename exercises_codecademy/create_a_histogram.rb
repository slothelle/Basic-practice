puts "Give me a sentence: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)

words.each  { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by{ |x, y| y }.reverse!

frequencies.each do |w, v|
  puts w + " " + v.to_s
end