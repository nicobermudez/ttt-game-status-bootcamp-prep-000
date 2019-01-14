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
  WIN_COMBINATIONS.each do |win_combo|
    pos1 = win_combo[0]
    pos2 = win_combo[1]
    pos3 = win_combo[2]
    if pos1 == "X" && pos2 = "X" && pos3 == "X"
      return win_combo
    end
    if pos1 == "O" && pos2 = "O" && pos3 == "O"
      return win_combo
    end
  end
  false
end


def full?(board)
  full_board = board.all? {|char| char == "X" || char == "O"}
  full_board
end


    
      
    
    
  