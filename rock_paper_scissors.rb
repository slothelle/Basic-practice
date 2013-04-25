# Inspired by: https://github.com/feministy/codecademy-practice/blob/master/rock-paper-scissors.js
# And: https://github.com/feministy/Basic-practice/blob/master/exercises_dbc_socrates_prep/die_class_2_symbols.rb

class RockPaperScissors

  attr_accessor :user 

  def initialize
    @computer = computer
    @user = user
    @result = nil
  end

  def computer
    roll = rand(3)

    if roll == 0
      @computer = "rock"
    elsif roll == 1
      @computer = "scissors"
    else
      @computer = "paper"
    end 
    
    @computer  
  end

  def play 
    puts "Do you choose rock, paper, or scissors?"
    @user = gets.chomp
    
    victory = "You win! The computer picked #{@computer}, and you picked #{@user}, which is superior."
    defeat = "You lose! Womp Womp. The computer picked #{@computer}, and you picked #{@user}, which is inferior."

    if @user == @computer
      @result = "Ladies and gentlemen, we have a tie. The computer picked #{user}, too!"
    elsif @user == "rock"
      if @computer == "paper"
        @result = defeat
      else
        @result = victory
      end
    elsif @user == "paper"
      if @computer == "rock"
        @result = victory
      else
        @result = defeat
      end
    elsif @user == "scissors"
      if @computer == "rock"
        @result = defeat
      else
        @result = victory 
      end
    else
      @result = "You didn't pick rock, paper, or scissors. Silly goose!"
    end 

    puts @result if @result != nil
      
  end

end

new_game = RockPaperScissors.new
new_game.play

