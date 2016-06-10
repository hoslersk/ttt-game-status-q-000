# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [0, 4, 8], #left diagonal
  [2, 4, 6] #right diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    #win_index_4 = win_combination[3] #this and below needed?
    #win_index_5 = win_combination[4]
    #win_index_6 = win_combination[5]
    #win_index_7 = win_combination[6]
    #win_index_8 = win_combination[7]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    #position_4 = board[win_index_4] #this and below needed?
    #position_5 = board[win_index_5]
    #position_6 = board[win_index_6]
    #position_7 = board[win_index_7]
    #position_8 = board[win_index_8]


      if (position_1 == "X") && (position_2 == "X") && (position_3 == "X")
        return win_combination # return the win_combination indexes that won.
      elsif (position_1 == "O") && (position_2 == "O") && (position_3 == "O")
        return win_combination
     #elsif (position_1 == " ") && (position_2 == " ") && (position_3 == " ")
        #return false
      else
        false
      end
  end
end
#
def full?(board)
  #board.each do |full|
  #board.any? do |full|
    if board.include?(" ") == false#(full == "X") || (full == "O")
      return true
    elsif board.include?(" ") == true
      return false
    else
      return false
    end
  #end
end
#
#def draw?(board)
#end
#
#def over?(board)
#end
#
#def winner?(board)
#end
#
