# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  
  ]

def won?(board)
  winner = []
  empty = board.all? {|x| position_taken?(board, x)}
  WIN_COMBINATIONS.each do |win_combo|
    if empty
      return false
    elsif win_combo.all? { |index| board[index] == "X"} || win_combo.all? {|index| board[index]=="O"}
      winner = win_combo
    end
  end
  winner
end


def full?(board)
  full_board = board.all? {|char| char == "X" || char == "O"}
  full_board
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  elsif won?(board)
    return false
  end
end

def over?(board)
  won?(board) || draw?(board) || full?(board) ? true : false
end

def winner(board)
  if won?(board)
      return board[won?[0]]
  else
    nil
  end
end
    
      
    
    
  