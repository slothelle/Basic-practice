class Grid
  def initialize(grid_values)
    @cells = grid_values
  end 

  def contains?(value)
  end

  def search
  end

end


class Sudoku
  def initialize(board_string)
    @board = []
    @grids = []
    # for each set of 9 numbers in board_string
    #   initialize a grid

    cell_contents = board_string.split("")
    cell_contents.each_slice(27) do |chunk|
      set_1 = []
      set_2 = []
      set_3 = []
      chunk.each_slice(9) do |row|
        # set_1 << row.pop(3) 
        # set_2 << row.pop(3) 
        # set_3 << row.pop(3) 
      end
      # @grids << Grid.new(set_1)
      # @grids << Grid.new(set_2)
      # @grids << Grid.new(set_3)
      # empty out set_1, _
    end

    # @grids = [[0, 0], [3, 0], [6, 0], [0, 3], [3, 3], [6, 3], [0, 6], [3, 6], [6, 6]]
    # @num = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    # create_board(board_string)
  end

  def create_board(board_string)
    board_string.split(//).each_slice(9) { |row| @board << row }
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
    col_range.each do |col|
      @board[row][col].include?(num)
    end
    # make this work for rows and columns both
    # change variable names
    # work off of an array
  end

  # def check_col?(num, col, row_range=0..8)
  #   row_range.each do |row|
  #     @board[row][col].include?(num)
  #   end 
  # end

  # def grid_coordinates(origin_x, origin_y, size=3)
  #   # takes origin_x, origin_y, size and finds coorindates of grid
  #   # returns array - includes index of every item in specified grid
  # end 

  # def grid_contains?(number)
  #   grid_coordinates.each { |cell| return true if cell.include?(number) }
  #   false
  # end

  # def search_grid(which_grid)
  #   # 
  # end

  def solve!
    @grids.each do |grid|
      search_grid(grid)
    end 
  end

  def check_grid_old
    grid_index = 0  

    num.each do |current_num|
      # increment the index of board to find the grid
      until grid_index > @grid.length
        row_index = @grid[grid_index][0]
        row_index_check = @grid[grid_index][0]
        col_index = @grid[grid_index][1]
        col_range = (col_index..(col_index + 2))

        until true # want to quit loop if check_row? ever returns true
          check_row?(current_num, row_index_check, col_range)
          row_index_check +=1 if check_row? == false
          # if row_index_check == row_index + 2
            # find empty cell ("0") 
            # check_row for empty cell
              # if true, move to next empty cell
              # if false, check col
                # if true, move to next empty cell
                # if false, place number
        end # row_index

      grid_index += 1
      end # grid_index
    end # num iteration 
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

game.board
