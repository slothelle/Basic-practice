things = %w{ kittens boxes bows hills }

things.unshift("music")
# ["music", "kittens", "boxes", "bows", "hills"]

puts things.inspect
# Array modified permanently 
# ["music", "kittens", "boxes", "bows", "hills"]