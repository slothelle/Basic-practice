arr = %w{ foot plant hand hold face plant foot balm }
puts "Unique array: #{arr.uniq.inspect}"
puts "Original array not modified: #{arr.inspect}"

# uniq! will modify the original array
# uniq will NOT modify the original array

