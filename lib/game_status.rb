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
    all_equal = win_combo.all? do |index|
      board[index] == "X" 
    end
    if (all_equal) 
      win_combo
    end
    all_equal = win_combo.all? do |index|
      board[index] == "O" 
    end
    if(all_equal)
      win_combo 
    end
  end
  false
end

    
      
    
    
  