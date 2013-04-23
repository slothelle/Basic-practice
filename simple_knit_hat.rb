def pattern
  puts "What size mm needle are you using? Don't use decimals unless needed."
  needle = gets.chomp

  puts "How many stitches do you have per inch?"
  gauge_inch = gets.chomp

  puts "How many rows do you have per inch?"
  gauge_row = gets.chomp

  puts "What is the circumference of the head you want to wear this hat?"
  puts "Please use inches, rounded to the nearest half inch (ex: 20, 16.5)."
  puts "This only works for 15 inches up to 26.5 inches."
  circumference = gets.chomp

  # Arrays to reference later
  abbrevs = [ "k: knit", "p: purl", "m: marker", "sl: slip",
              "pm: place marker", "slm: slip marker", "k2tog: knit two together",
              "ssk: slip, slip, knit two slipped stitches together", "co: cast on",
              "bo: bind off", "st/s: stitch/es", "rpt/s: repeat/s" ]
  errors = ["size: your circumference was not a valid number, height cannot be calculated"]

  baby = [15, 15.5, 16, 16.5, 17, 17.5]
  child = [18, 18.5, 19, 19.5, 20, 20.5]
  adult = [21, 21.5, 22, 22.5, 23, 23.5, 24, 24.5, 25, 25.5, 26, 26.5]

  # Calculations
  cast_on = gauge_inch.to_i * circumference.to_i
  ribbing_rows = gauge_row.to_i * 2

  # Math for ribbing
  if cast_on % 4 == 0
    ribbing = "your choice of: (a) k2, p2, (b) k3, p1, or (c) k1, p1"
  elsif cast_on % 2 == 0
    ribbing = "k1, p1"
  elsif cast_on % 3 == 0
    ribbing = "k2, p1"
  elsif cast_on % 5 == 0
    ribbing = "k3, p2"
  else
    # Later I will change this to return custom information about custom ribbing
    # using math, but for now it just throws a note saying the user has to do this themselves
    ribbing = "OH NEWTS! I couldn't come up with a multiple of 2, 3, 4, or 5; you must come up with your own custom"
  end 

  # Conditions for height
  if baby.include?(circumference.to_i)
    height = 1
  elsif child.include?(circumference.to_i)
    height = 1.5
  elsif adult.include?(circumference.to_i)
    height = 2
  else
    height = "ERROR(size)"
  end

  # Crown decreases 
  if cast_on % 10 == 0 
    # Should do some sort of array here?
    # Generate total number of stitches remaining, how many to k, and row #
    # Ideally output would be: "Row z: * kx, k2tog, rpt from * to end, (y sts rem)"
  end 

  # Pattern print out
  puts "\nPattern processing... "
  puts "\n- - - - - - - - - - - - - - - - - - - - - - -"
  puts "\nA custom knitting pattern. Hooray!"
  puts "This pattern requires either a 16 inch circular needle, or a set of DPNs. Your choice."
  puts "\nDid you get an error? Consult the error legend at the bottom."
  puts "\n- - - - - - - - - - - - - - - - - - - - - - -"
  puts "\nLegend:"
  puts abbrevs.sort
  puts "\n- - - - - - - - - - - - - - - - - - - - - - -"
  puts "\nDirections:"
  puts "Using one needle size smaller than required for gauge, co #{cast_on} sts, pm and join for knitting in the round."
  puts "Work in #{ribbing} ribbing for approximately 2 inches (#{ribbing_rows} rows)."
  puts "Change to #{needle} mm needle. Work in stockinette st (k all sts, all rows) until hat measures #{height} inches from crown."
  puts "\n- - - - - - - - - - - - - - - - - - - - - - -"
  puts "\nError legend:"
  puts errors.sort

end 

puts pattern 