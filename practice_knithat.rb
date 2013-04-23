class Hat

  attr_accessor :gauge_inch, :gauge_row, :circumference, :needle

  def initialize
    @gauge_inch = 0
    @gauge_row = 0
    @size = 0
    @needle = 0
  end


=begin

# Temporarily not being used 
# Need to update to reflect new Hash methods in 1.9 after computer is fixed
# Requires permanent sorting of Hash to work

  def needle_sizes
    @needle_sizes = { "1.75" => "US 00",    "2"  => "US 0",     "2.25" => "US 1",
                      "2.5" => "US 1 1/2",  "2.75" => "US 2",   "3" => "US 2 1/2",
                      "3.25" => "US 3",     "3.5" => "US 4",    "3.75" => "US 5",
                      "4" => "US 6",        "4.5" => "US 7",    "5" => "US 8",
                      "5.5" => "US 9",      "6" => "US 10",     "6.5" => "US 10 1/2",
                      "8" => "US 11",       "9" => "US 13",     "10" => "US 15",    
                      "12.75" => "US 17",   "15" => "US 19",    "19" => "US 35", 
                      "25" => "US 50" }
  end

=end

  def size_tables
    # Circumferences to determine how tall the hat should be
    child = [15, 15.5, 16, 16.5, 17, 17.5, 18, 18.5, 19, 19.5, 20, 20.5]
    adult = [21, 21.5, 22, 22.5, 23, 23.5, 24, 24.5, 25, 25.5, 26, 26.5]

    @height = height

    if child.include?(@circumference)
      # How much to knit before crown decreases
    end

    if adult.include?(@circumference)
      # How much to knit before crown decreases
    end

  end 

  def crown
  end

  def pattern
    # Reference list
    abbrevs = [ "k: knit", "p: purl", "m: marker", "sl: slip",
                "pm: place marker", "slm: slip marker", "k2tog: knit two together",
                "ssk: slip, slip, knit two slipped stitches together", "co: cast on",
                "bo: bind off", "st/s: stitch/es", "rpt/s: repeat/s" ]

    # Calculating cast on
    cast_on = @gauge_inch * @circumference

    # Math for ribbing
    band_motif = cast_on

    if band_motif % 4 == 0
      return "your choice of: (a) k2, p2, (b) k3, p1, or (c) k1, p1"
    elsif band_motif % 2 == 0
      return "k1, p1"
    elsif band_motif % 3 == 0
      return "k2, p1"
    elsif band_motif % 5 == 0
      return "k3, p2"
    else
      # Later I will change this to return custom information about custom ribbing
      # using math, but for now it just throws a note saying the user has to do this themselves
      return "OH NEWTS! I couldn't come up with a multiple of 2, 3, 4, or 5; you must come up with your own custom"
    end

  puts "Custom knitting pattern: a hat for someone I like"
  puts ""
  puts "Legend:"
  puts abbrevs.sort 
  puts ""
  puts "Using #{needle}, co #{cast_on} sts. pm and join for knitting in the round."
  puts "Work in #{band_motif} ribbing for 2 inches, approximately ."

  end

end

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
