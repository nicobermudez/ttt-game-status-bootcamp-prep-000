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
  for win_combo in WIN_COMBINATIONS do
    counter = 0
    for win_index in win_combo do
      if board[win_index].all? = "X"

      if counter = 3
        return win_combo




return false
end

    
      
    
    
  