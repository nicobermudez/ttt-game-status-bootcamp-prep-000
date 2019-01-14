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

# def won?(board)
#   WIN_COMBINATIONS.each do |win_combo|
#    win_combo.each do |win_index|
#      win_true = win_combo.all?{|index| board[index] == "X"} || win_combo.all?{|index| board[index] == "O"}
#      if(win_true) 
#        return win_combo 
#      end
#    end
#  end
#  return false
# end
#

def full?(board)
  full_board = board.all? {|char| char == "X" || char == "O"}
  return full_board
end
    
      
    
    
  