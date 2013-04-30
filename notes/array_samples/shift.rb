things = %w{ kittens boxes bows hills }
puts "with no arguments, #{things.shift} is removed. sad."
puts "i am now: #{things.inspect}"

# with no arguments, kittens is removed. sad.
# i am now: ["boxes", "bows", "hills"]

more_things = %w{coffee cream sugar honey tea ice}
puts "with some arguments: #{more_things.shift(3)}"
puts "i'm a changed array! #{more_things.inspect}"

# with some arguments: ["coffee", "cream", "sugar"]
# i'm a changed array! ["honey", "tea", "ice"]