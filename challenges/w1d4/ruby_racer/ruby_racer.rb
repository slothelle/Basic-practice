require_relative 'racer_utils'

class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 25)
    @players = players
    @length = length
    @die = Die.new
    @winner = nil
    @player_loc = Hash[players.zip(Array.new(players.size) {0})]
  end
  
  # Returns +true+ if one of the players has reached 
  # the finish line, +false+ otherwise
  def finished?
    return true if @winner
  end
  
  def funny
    @things = [ ", the mysterious prize fighter from India with 11 toes",
                ", the enchanting chef from Canada who hates poutine",
                ", the nudist from Siberia who is seriously regretting their lifestyle choice",
                ", the failed abstract painter from North Korea"]
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    @winner + funny.sample
  end

  # Rolls the dice and advances +player+ accordingly
  def advance_player!(player)
    @player_loc[player] += @die.roll # Increments player location
    if @player_loc[player] >= @length
      @player_loc[player] = @length
      @winner = player
    end 
  end
  
  # Prints the current game board
  # The board should have the same dimensions each time
  # and you should use the "reputs" helper to print over
  # the previous board
  def print_board
    puts ("REACH FOR THE STARS!").center(110)
    puts ""
    puts "Our players:".center(110)
    @players.each do |player|
        puts "#{player}!".center(110)
      end
    puts ""
    puts ""
    @players.each do |player|
      puts '..*..' * 22
      puts ""
      print ">> "
      print '   |' * (@player_loc[player]) + player # Requires 3 letter player name
      print '|   ' * (@length - @player_loc[player]) 
      print " <<\n"
      puts ""
    end 
    puts '..*..' * 22
    puts ""
  end
end

players = ["Liz", "Hal", "Tom", "Kim"]

game = RubyRacer.new(players)

# This clears the screen, so the fun can begin
clear_screen!

until game.finished?
  players.each do |player|
    # This moves the cursor back to the upper-left of the screen
    move_to_home!
  
    # We print the board first so we see the initial, starting board
    game.print_board
    game.advance_player!(player)
    
    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.1)
  end
end

clear_screen! 
# The game is over, so we need to print the "winning" board
game.print_board

puts "#{game.winner}, has won."