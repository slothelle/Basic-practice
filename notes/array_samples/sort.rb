arr = %w{beast fly bird dog cat chase}

puts arr.sort

# beast
# bird
# cat
# chase
# dog
# fly

puts arr.sort { |a, b| b <=> a }

# fly
# dog
# chase
# cat
# bird
# beast