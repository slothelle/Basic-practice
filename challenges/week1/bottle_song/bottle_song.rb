# Takes as its input an integer +n+ representing the starting number of bottles
# Prints out the lyrics to "n Bottles of Beer" to the console.

def bottle_song(n)
  
  while n > 2
    puts "#{n} bottles of beer on the wall, #{n} bottles of beer."
    n -= 1
    puts "Take one down, pass it around, #{n} bottles of the beer on the wall."
  end 

  puts "#{n} bottles of beer on the wall, #{n} bottles of beer. Take one down, pass it around, 1 bottle of beer on the wall."
  
  n -= 1
  puts "#{n} last bottle of beer on the wall, #{n} bottle of beer. You take it down, pass it around, and I hate you because there are no more beers on the wall."
end

bottle_song(14)