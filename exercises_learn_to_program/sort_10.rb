#Writing your own sorting method
#Using < to find which comes first in the dictionary
#Then you'll need a list of alread-sorted of words, and a list of
#still-unsorted words.
#
#Take the list of words, find the smallest word
#put it at the end of the already-sorted list
#and move onto the next word from the unsorted list.
#Repeat until unsorted list is empty
#
#Need to use the wrapper method
#Wraps up another method into another
#
#Important to do this without modifying the original array?
#

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
    if test_word < smallest
      still_unsorted.push(smallest)
      smallest = test_word
    else
      still_unsorted.push(test_word)
    end
  end

sorted.push(smallest)
recursive_sort(still_unsorted, sorted)
end

my_array = ["cat", "bird", "dog", "beast", "elephant", "anteater"]
sort(my_array)