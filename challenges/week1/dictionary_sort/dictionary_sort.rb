def dictionary_sort(arr)
  arr.sort_by! { |x| x.downcase }
  puts "Congratulations! Your dictionary has #{arr.length} words."
  puts arr
end

def entries
  words = []
  puts "Type a word:"
  entry = gets.chomp

  until entry == ""
    if entry =~ /[0-9]/ 
      puts "Not a valid word. Try again."
      entry = gets.chomp
    elsif 
      words.push(entry)
      puts "Type another word (or press enter to finish):"
      entry = gets.chomp
    end
  end
  
  dictionary_sort(words)
end

# ...your code here to initialize the program and take user input
entries
