def build_tictac_board(amount=1)
  amount.times do
    letters = ["X", "X", "X", "X", "X", "O", "O", "O", "O", "O"].shuffle
    board = Array.new(3) { letters.shift(3) }
    board.each { |subarray| print "#{subarray.join("  |  ")}\n" }
    puts ""
  end 
end 

build_tictac_board(10)

