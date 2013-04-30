puts "What year were you born in? 4 digits please."
birth_year = gets.chomp

puts "What month were you born in (1-12)"
birth_month = gets.chomp

puts "What day were you born on (1-31)?"
birth_day = gets.chomp # happy birthday to youuuuu

born = Time.new
born = Time.local(birth_year, birth_month, birth_day)

time = Time.new

