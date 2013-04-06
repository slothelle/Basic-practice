# Write a method reverse_words which takes a sentence
# as a string and reverse each word in it.

def reverse_words(str)
  str_array = []
  
  if str.length >= 1
    str_array = str.split(/\W+/)
    str_array.collect { |word| word.reverse }.join(' ')
  else
    return ""
  end
end