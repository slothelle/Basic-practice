# Create a GuessingGame class which is initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer called guess as its input. 
# guess should return the symbol :high if the guess is larger than the answer, 
# :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if 
# the most recent guess was correct and false otherwise.

class GuessingGame
  def initialize(guess)
    @guess = guess
    @answer = answer 
  end

  def answer
    1 + rand(100)
  end

  def solved?
    if @recent_guess == answer 
      true
    elsif @recent_guess != answer
      false
    end
  end

  def guess(recent_guess)
    guesses = []

    recent_guess.times do
      guesses << self.guesses
    end

    return :correct if guesses.last == answer

    if guesses.last < answer
      return :low
    elsif guesses.last > answer 
      return :high
    end

    guesses

  end

end


# Example (1)
game = GuessingGame.new(10)

game.solved? # => false
game.guess(5) # => :low
game.guess(20) # => :high
game.solved? # => false

game.guess(10) # :correct
game.solved? # => true

# Example (2)
game = GuessingGame.new rand(100)
last_guess = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops! Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"