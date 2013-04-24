# Same number of elements, same size elements

ary_1 = ["bird", "fish", "lamb"]
ary_2 = ["wind", "tree", "moon"]
ary_3 = ["iced", "lime", "salt"]

ary_3.zip(ary_1, ary_2)

# [["iced", "bird", "wind"], ["lime", "fish", "tree"], ["salt", "lamb", "moon"]]

#

# Same number of elements, different size elements

ary_1 = ["birdly", "fishing", "lamb"]
ary_2 = ["wind", "tree", "moony"]
ary_3 = ["riced", "lime", "unsalted"]

ary_3.zip(ary_1, ary_2)

# [["riced", "birdly", "wind"], ["lime", "fishing", "tree"], ["unsalted", "lamb", "moony"]]

#

# What happens if you have more elements in one of the arguments?

ary_1 = ["bird", "fish", "lamb", "chicken"]
ary_2 = ["wind", "tree", "moon"]
ary_3 = ["rice", "lime", "salt"]

ary_3.zip(ary_1, ary_2)

# [["rice", "bird", "wind"], ["lime", "fish", "tree"], ["salt", "lamb", "moon"]]
# It is ignored

#

# Last but not least, nil!

ary_1 = ["bird", "fish", "lamb"]
ary_2 = ["wind", "tree"]
ary_3 = ["rice", "lime", "salt"]

ary_3.zip(ary_1, ary_2)

# [["rice", "bird", "wind"], ["lime", "fish", "tree"], ["salt", "lamb", nil]]

#

# Using a block
ary_1 = ["bird", "fish", "lamb"]
ary_2 = ["wind", "tree", "moon"]
ary_3 = ["rice", "lime", "salt"]

ary_3.zip(ary_1, ary_2) { |x| puts x.reverse.inspect }

# ["wind", "bird", "rice"]
# ["tree", "fish", "lime"]
# ["moon", "lamb", "salt"]