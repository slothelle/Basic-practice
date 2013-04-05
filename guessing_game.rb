class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(recent_guess) 

    guess_array = []

    guess_array.push(recent_guess)
    test_guess = guess_array.last
    @test_guess = test_guess

    return :correct if test_guess == @answer
    return :high if test_guess > @answer
    return :low if test_guess < @answer
  end
 
  def solved?
    @test_guess == @answer
  end
 
end