puts 'How about we knit a hat?'
puts 'I think that\'s a good idea.'
puts 'But I need some information from you first.'
puts ''
puts 'What is your gauge? (The number of stitches per inch)'
gauge = gets.chomp
puts ''
puts 'Great. Now, what is the circumference of your head? In inches, please.'
head = gets.chomp
puts ''
puts 'I\'m not smart enough to round up or take positive and negative ease into account (yet), but I will be soon.'
puts 'So for now, you have to round on your own to get the right multiple.'
puts 'But here is your knitting pattern. Sort of. It will get better when I get better at Ruby.'
puts ''
cO = gauge.to_i * head.to_i
line_width = 90
puts ('My Hat Pattern'.center(line_width))
puts ''
puts 'Using a 16 inch circular needle, CO ' + cO.to_s + ' sts.'
puts 'PM and join for knitting in the round.'
puts 'Work hat band in chosen motif (k2, p2 ribbing, for example) for approximately 2 inches.'
puts 'For the hat body, k all sts for every round until hat measures 2" from the top of your head.'
