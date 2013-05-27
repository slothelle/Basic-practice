pawn = Array.new(8) { "Pawn" }
pieces = %w{ Rook Knight Bishop Queen King Bishop Knight Rook }

chessboard = []
chessboard[0] = pieces.map { |p| "B #{p}" }
chessboard[1] = pawn.map { |p| "B #{p}" }
chessboard <<([" "] * 8) << ([" "] * 8) << ([" "] * 8) << ([" "] * 8)
chessboard[6] = pawn.map { |p| "W #{p}" }
chessboard[7] = pieces.map { |p| "W #{p}" }

chessboard_2 = []
chessboard_2 << pieces.map { |p| "B #{p}" } << pawn.map { |p| "B #{p}" }
chessboard_2 << ([" "] * 8) << ([" "] * 8) << ([" "] * 8) << ([" "] * 8)
chessboard_2 << pawn.map { |p| "W #{p}" } << pieces.map { |p| "W #{p}" }


chessboard_2.each do |row| 
  row.each do |square| 
    print "| #{square.center(11, " ")}"
  end 
  print "|\n|#{("-")*103}|\n"
end 

# chessboard = [["B Rook", "B Knight", "B Bishop", "B Queen", "B King", "B Bishop", "B Knight", "B Rook"],
#               ["B Pawn", "B Pawn", "B Pawn", "B Pawn", "B Pawn", "B Pawn", "B Pawn", "B Pawn"],
#               ["", "", "", "", "", "", "", ""],
#               ["", "", "", "", "", "", "", ""],
#               ["", "", "", "", "", "", "", ""],
#               ["", "", "", "", "", "", "", ""],
#               ["W Pawn", "W Pawn", "W Pawn", "W Pawn", "W Pawn", "W Pawn", "W Pawn", "W Pawn"],
#               ["W Rook", "W Knight", "W Bishop", "W Queen", "W King", "W Bishop", "W Knight", "W Rook"]]
 
# puts chessboard[7][0] == 'W Rook'
# puts chessboard[1][1] == "B Pawn"
# puts chessboard[4][4] == ""
# puts chessboard[7][7] == "W Rook"