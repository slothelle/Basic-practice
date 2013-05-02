a = %w{ cat dog bird beast flea argyle machine }

a.reject! { |word| word.length > 3 }

puts a.inspect
