# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows = Hash.new { |h, k| h[k] = Set.new }
  cols = Hash.new { |h, k| h[k] = Set.new }
  squares = Hash.new { |h, k| h[k] = Set.new }

  (0...9).each do |row|
    (0...9).each do |col|
      next if board[row][col] == '.'

      return false if rows[row].include?(board[row][col]) ||
                      cols[col].include?(board[row][col]) ||
                      squares[[(row / 3), (col / 3)]].include?(board[row][col])

      rows[row] << board[row][col]
      cols[col] << board[row][col]
      squares[[(row / 3), (col / 3)]] << board[row][col]
    end
  end

  true
end