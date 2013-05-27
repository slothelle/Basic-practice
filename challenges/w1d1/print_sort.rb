def print_and_sort(array)
  output_string = ""
  array.each do |element|
    output_string = output_string + " " + element.to_s
  end
  puts output_string
  strings = array.collect! { |x| x.to_s }
  return strings.sort
end

words = %w{bird cat dog beast string cheese}
numbers = [1, 2, 35, 4, 5]
mixed = ["cat", 1, 2, "three", "animal", 0]

print_and_sort(words)
print_and_sort(numbers)
print_and_sort(mixed)
