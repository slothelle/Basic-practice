class Sudoku
  def initialize(board_string)
    @board = []
    board_string.split(//).each {|num| num.to_i}.each_slice(9) { |row| @board << row  }
  end

  def is_solved?
    @unsolved_count = @board.flatten.select { |num| num.to_i == 0}
    if @unsolved_count == 0
      return true
    else
      return false
    end
  end

  def check_row?(num, row, col_range=0..8)
    # for each number in the col_range (row does not change)
      # @board[row][col].include?(num)
    # true == num is in that row
    # false == num is NOT in that row
  end

  def check_col?(num, col, row_range=0..8)
    # for each number in the row_range (col does not change)
      # @board[row][col].include?(num)
    # true == num is in that col
    # false == num is NOT in that row
    # only running this after we've checked grid AND row
  end

  def check_grid
    grid = [[0, 0], [3, 0], [6, 0], [0, 3], [3, 3], [6, 3], [0, 6], [3, 6], [6, 6]]
    num = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    # Even index is row, odd is col
    # Starts with top left grid, moves through left side grids top to bottom
    # Then does middle column of grids, top to bottom
    # Then does right side grids, top to bottom

    # num_index = 0

    # until num_index > num.length
      # grid_index = 0
    # until grid_index > grid.length 
      # start with row using integer (row_index) from grid[grid_index][0]
      # create column range using integer (col_range) from grid[0][1] + 2 (ex: 0..2)
      # until row_index > row_index + 2
        # check_row(num[num_index], row_index, col_range)
          # if check_row == false
            # row_index += 1
          # if check_row == true
            # skip to next grid[+=1]
        # find first empty cell, starting with grid[0][0]
          # check_row(num[num_index], empty_row)
            # if true
              # move to next empty
            # if false
              # check_col(num[num_index], empty_col)
                # if false
                  # place num[num_index]
                # if true
                  # move to next empty
      # move to next grid - grid[index+=1]
      # after grid_index > grid.length, increment num_index
  end  

  def solve!
  end

  # Returns a string representing the current state of the board
  # Don't spend too much time on this method; flag someone from staff
  # if you are.
  def board
    @board.each { |row| puts row.join(" ") }
  end
end


# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
board_string = File.readlines('sample.unsolved.txt').first.chomp

game = Sudoku.new(board_string)

# Remember: this will just fill out what it can and not "guess"
# game.solve!

# puts game.board

#p game.is_solved?

game.print_board
