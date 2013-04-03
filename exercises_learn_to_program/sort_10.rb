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
  recursive_dict_sort(array, [])
end

def recursive_dict_sort(unsorted, sorted)
  if unsorted.length <= 0
    puts "I can't sort this, there are no words!"
  end

  unsorted_list = unsorted # Renaming to prevent modifying original array
  smallest = unsorted_list.pop 
  still_unsorted = []

  unsorted_list.each do |test_word|
    if test_word.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = test_word
    else
      still_unsorted.push smallest 
      smallest = test_word
    end
  end

sorted.push smallest
recursive_dict_sort(still_unsorted, sorted)

end

#push, pop and if/else statements to examine contents of the array 
#and sort it accordingly 
#
#how do you get things out of the array?
#you use each do 
#

#Make this into a dictionary sort

def sort(array)
  recursive_sort(array, [])
end

def recursive_dict_sort(unsorted, sorted)
  if unsorted.length <= 0
    puts "I can't sort this, there are no words!"
  end

  unsorted_list = unsorted # Renaming to prevent modifying original array
  smallest = unsorted_list.pop 
  still_unsorted = []

  unsorted_list.each do |test_word|
    if test_word < smallest 
      still_unsorted.push smallest
      smallest = test_word
    else
      still_unsorted.push smallest 
      smallest = test_word
    end
  end

sorted.push smallest
recursive_dict_sort(still_unsorted, sorted)

end