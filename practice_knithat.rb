class Hat

  attr_accessor :gauge_inch, :gauge_row, :circumference, :needle

    # Add list of private/public methods

  def initialize
    @gauge_inch = gauge_inch
    @gauge_row = gauge_row
    @circumference = circumference
    @needle = needle
    end

    # Private 
  def cast_on
    @gauge_inch.to_i * @circumference.to_i
  end

    # Private
  def ribbing_type 
    # Can this be cleaner?
    if cast_on % 4 == 0
      return "your choice of: (a) k2, p2, (b) k3, p1, or (c) k1, p1"
    elsif cast_on % 2 == 0
      return "k1, p1"
    elsif cast_on % 3 == 0
      return "k2, p1"
    elsif cast_on % 5 == 0
      return "k3, p2"
    else
    # Change this to return custom information about custom ribbing
      return "OH NEWTS! I couldn't come up with a multiple of 2, 3, 4, or 5; you must come up with your own custom"
    end 
  end 

    # Private
  def ribbing_rows
    @gauge_row.to_i * 2 # 2 inches for all sizes
  end

  # Private
  def height
    # Size tables
    baby = [15, 15.5, 16, 16.5, 17, 17.5]
    child = [18, 18.5, 19, 19.5, 20, 20.5]
    adult = [21, 21.5, 22, 22.5, 23, 23.5, 24, 24.5, 25, 25.5, 26, 26.5]

    # Work until hat measures from crown
    return "1 inch" if baby.include?(circumference.to_i)
    return "1.5 inches" if child.include?(circumference.to_i)
    @height = "2 inches" if adult.include?(circumference.to_i)
  end

  # Private
  def crown_math
    # math for crown decreases
  end

  # Public?
  def pattern
    # Grab user input
    puts "What size mm needle are you using? Don't use decimals unless needed."
    @needle = gets.chomp

    puts "How many stitches do you have per inch?"
    @gauge_inch = gets.chomp

    puts "How many rows do you have per inch?"
    @gauge_row = gets.chomp

    puts "What is the circumference of the head you want to wear this hat?"
    puts "Please use inches, rounded to the nearest half inch (ex: 20, 16.5)."
    puts "This only works for 15 inches up to 26.5 inches."
    @circumference = gets.chomp

    # Legend table
    abbrevs = [ "k: knit", "p: purl", "m: marker", "sl: slip",
                "pm: place marker", "slm: slip marker", "k2tog: knit two together",
                "ssk: slip, slip, knit two slipped stitches together", "co: cast on",
                "bo: bind off", "st/s: stitch/es", "rpt/s: repeat/s" ]

    # Error table
    errors = ["size: circumference not a valid number, height cannot be calculated"]

    # Pattern print out
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
    puts "Work in #{ribbing_type} ribbing for approximately 2 inches (#{ribbing_rows} rows)."
    puts "Change to #{needle} mm needle. Work in stockinette st (k all sts, all rows) until hat measures #{height} from crown."
    puts "\n- - - - - - - - - - - - - - - - - - - - - - -"
    puts "\nError legend:"
    puts errors.sort
  end

end

test_hat = Hat.new 
test_hat.pattern 