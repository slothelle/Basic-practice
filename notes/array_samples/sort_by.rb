a = ["cat", "bird", "Dog", "puppy", "BEAST"]
puts a.sort_by! { |w| w.downcase }

# BEAST
# bird
# cat
# Dog
# puppy