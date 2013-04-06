# Sort that can handle a capital letter

def sort(array)
  recursive_sort(array, [])
end

def recursive_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  still_unsorted = []
  smallest = unsorted.pop
  
  unsorted.each do |test_word|
    if test_word.downcase < smallest.downcase
      still_unsorted.push(smallest)
      smallest = test_word
    else
      still_unsorted.push(test_word)
    end
  end

sorted.push(smallest)
recursive_sort(still_unsorted, sorted)
end

my_array = ["Cat", "bird", "dog", "beast", "Elephant", "anteater"]
sort(my_array)