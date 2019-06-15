class TicTacToe
  def initialize(board)
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @board = board
  end

  def WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ]
  end

  def display_board(@board)
    print " #{board[0]} | #{board[1]} | #{board[2]} "
    print "-----------"
    print " #{board[3]} | #{board[4]} | #{board[5]} "
    print "-----------"
    print " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def input_to_index
    index = input.to_i - 1
  end

  def move (index, token="X")
    @board[index] = token
  end

  def position_taken?(index)
    if index == " "
      false
    else
      true
    end
  end

  def valid_move?(index)
    if index.between?(0, 8) && position_taken?(index) == false
      true
    else
      false || nil
    end
  end

  def turn
    print "Please give a number between 1 to 9"
    input = gets.strip
    input_to_index
    if valid_move?(index)
      move (index, token="X")
      display_board
    else
      until valid_move?(index) do
        turn
      end
    end
  end

  def turn_count
    counter = 0
    board.each do |token|
      if token == "X" || token == "O"
        counter += 1
      end
  end

  def current_player
    if turn_count % 2 == 0
      print "X"
    else
      print "O"
    end
  end

  def won?
    if WIN_COMBINATIONS[]
      display_board
    else
      false || nil
    end
  end

  def full?
    if BLAH "X" || "O"
      true
    end
  end

  def draw?
    if full? && !=won
      true
    elsif full? && won
      false
    elsif !=full? || !=won
      false
    end
  end

  def over?
    if won || full
      true
    end
  end

  def winner
    if won?
      BLAH
    end
  end

  def play
    until over?
      BLAH
    end
    if won?
      puts "Congratulations"
    elsif draw?
      puts "It ended in a draw"
    end
  end

end
