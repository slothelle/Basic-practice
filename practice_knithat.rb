class Hat

  attr_accessor :gauge_inch, :gauge_row, :circumference, :needle
  attr_reader :cast_on

    # Add list of private/public methods

  def initialize
    @gauge_inch = gauge_inch
    @gauge_row = gauge_row
    @circumference = circumference
    @needle = needle
  end

  def ribbing_needle
    @needle_array = ["1.75mm", "2mm", "2.25mm", "2.5mm", "2.75mm", "3mm",
                    "3.25mm", "3.5mm", "3.75mm", "4mm", "4.25mm", "4.5mm",
                    "5mm", "5.5mm", "6mm", "6.5mm", "7mm", "7.5mm", "8mm",
                    "9mm", "10mm", "12.75mm", "15mm", "19mm", "25mm"]

    @ribbing_needle_index = @needle_array.index("#{@needle.to_s}mm") - 2
    @ribbing_needle = @needle_array.values_at(@ribbing_needle_index)
  end

  def cast_on
    @cast_on = @gauge_inch.to_i * @circumference.to_i
  end 

  def cast_on_10
    return @cast_on if @cast_on % 10 == 0
  end

  def cast_on_9
    return @cast_on if @cast_on % 9 == 0
  end 

  def cast_on_8
    return @cast_on if @cast_on * 8 == 0
  end

  def cast_on_round
    if @cast_on % 10 != 0 && @cast_on % 9 != 0 && @cast_on % 8 != 0
      
      round_10 = @cast_on + 10 - (@cast_on % 10) 
      round_9 = @cast_on + 9 - (@cast_on % 9) 
      round_8 = @cast_on + 8 - (@cast_on % 8) 

      round_ary = [round_10, round_9, round_8]
      
      @cast_on = round_ary.min # Pulling the smallest rounded multiple         
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
    return "2 inches" if adult.include?(circumference.to_i)
  end

  # Private
  def crown_math
    # math for crown decreases
  end

  # Public
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
                "co: cast on", "bo: bind off", "st/s: stitch/es", "rpt/s: repeat/s" ]

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
    puts "Using #{ribbing_needle}, co #{cast_on} sts, pm and join for knitting in the round."
    puts "Work in ribbing or edging of your choice for approximately 2 inches (#{ribbing_rows} rows)."
    puts "Change to #{@needle} mm needle. Work in stockinette st (k all sts, all rows) until hat measures #{height} from crown."
    puts "\n- - - - - - - - - - - - - - - - - - - - - - -"
  end

end

test_hat = Hat.new 
test_hat.pattern 