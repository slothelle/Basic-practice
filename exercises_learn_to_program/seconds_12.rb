# Find out that exact second you were born
# Figure out when you will turn (or when you turned) 1 billion seconds old

birth = Time.new
birth = Time.local(1985, 10, 26, 1, 24)
now = Time.new

seconds = now - birth

puts "Liz is #{seconds.to_i} seconds old."