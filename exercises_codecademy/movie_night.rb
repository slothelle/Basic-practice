movies = { Brave: 5, Pocahontas: 3.5, Skyfall: 3 }

puts "What would you like to do?"
choice = gets.chomp

case choice
when "add"
  puts "What do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What would you rate that? 1-5, please."
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Movie '#{title}' with rating #{rating} has been added."
  else 
    puts "That's already in your list."
  end
when "update"
  puts "What title do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "This movie isn't in your list, please add it."
  else 
    puts "What do you want to change the rating to? 1-5, please."
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Movie '#{title}' updated with rating #{rating}."
  end
when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "What title did you want to delete?"
  title = gets.chomp
    if movies[title.to_sym].nil?
      puts "#{title} isn't on your list. Derp!"
    else 
      movies.delete(title.to_sym)
      puts "#{title} has been removed from your list."
    end
else
  puts "Error! Type 'help' for a list of commands."
  help = gets.chomp
  if help == "help"
    puts "Type 'add' to add a movie and its rating."
    puts "Type 'update' to update a rating for a movie."
    puts "Type 'delete' to remove a movie."
    puts "Type 'display' to show a list of movies."
  end
end