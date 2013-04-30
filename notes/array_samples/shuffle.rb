a = %w{bow chicka bow oh beep de leep poo woo}
puts "shuffle me! #{a.shuffle}"
puts "unmodified original array: #{a.inspect}"
puts "shuffle me permanently! #{a.shuffle!}"
puts "modified original array: #{a.inspect}"

# shuffle me! ["de", "chicka", "oh", "beep", "poo", "woo", "leep", "bow", "bow"]
# unmodified original array: ["bow", "chicka", "bow", "oh", "beep", "de", "leep", "poo", "woo"]
# shuffle me permanently! ["bow", "bow", "chicka", "woo", "leep", "de", "oh", "poo", "beep"]
# modified original array: ["bow", "bow", "chicka", "woo", "leep", "de", "oh", "poo", "beep"]

b = %w{a b c d e f g h i j k l}
puts "shuffle me with rng! #{b.shuffle(random: rand)}"
puts "unmodified original array #{b.inspect}"
puts "shuffle me permanently using rng with a range. FANCY."
puts b.shuffle!(random: rand(2..8)).inspect
puts "see, now i am permanently shuffled: #{b.inspect}"

# shuffle me with rng! ["b", "e", "j", "f", "i", "k", "c", "d", "g", "h", "l", "a"]
# unmodified original array ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]
# shuffle me permanently using rng with a range. FANCY.
# ["k", "j", "g", "a", "h", "e", "d", "i", "l", "b", "f", "c"]
# see, now i am permanently shuffled: ["k", "j", "g", "a", "h", "e", "d", "i", "l", "b", "f", "c"]