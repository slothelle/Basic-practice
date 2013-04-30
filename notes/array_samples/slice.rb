# slice 
# ary[index] -> obj or nil
# slice(index) -> obj or nil
# returns element at index 

# ary[start, length] -> new_ary or nil
# slice(start, length) -> new_ary or nil
# returns a subarray starting at start and continuing for length elements

# ary[range] -> new_ary or nil
# slice(range) -> new_ary or nil
# returns a subarray specified by range

# slice!
# slice!(index) -> obj or nil
# deletes the element(s) at index

# slice!(start, length) -> new_ary or nil
# deletes the elements, starting with start index and continuing for length elements

# slice!(range) -> new_ary or nil
# deletes a range of elements 

a = [1, 432, 5, 6745, 39, 0, 27, 8]
puts "a.slice(4): #{a.slice(4)}" # 39
puts "a[3]: #{a[3]}" # 6745

b = %w{hello cat friend beast bird orange peach}
puts "b[1,3]: #{b[1,3]}" # ["cat", "friend", "beast"]
puts "b.slice(3,5): #{b.slice(3,5)}" # ["beast", "bird", "orange", "peach"]

c = [432, 432, 4, 765, 90, 8, 47, 4382]
puts "c.slice(2..5): #{c.slice(2..5)}" # [4, 765, 90, 8]
puts "c[1..4]: #{c[1..4]}" # [432, 4, 765, 90]

d = %w{what happens when you delete from an array oh nooooo life is over}
d.slice!(3..6)
puts d # what happens when array oh nooooo life is over

