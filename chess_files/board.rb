require "byebug"
require_relative "piece.rb"

class Board

  attr_reader :board 

  def initialize
    @board = Array.new(8) { Array.new(8) }

    @board.each_with_index do |row, col|
      if row == 0 || row == 1
        row.each_with_index { |default, idx| @board[row, idx] = add_piece(Piece.new(:black, board, [row, idx]), [row, idx])}
      elsif row == 6 || row == 7
        row.each_with_index { |default, idx| @board[row, idx] = add_piece(Piece.new(:white, board, [row, idx]), [row, idx])}
      else #Null Piece
        row.each_with_index { |default, idx| @board[row, idx] = add_piece(Piece.new(:gray, board, [row, idx]), [row, idx])}
      end
    end

  

    #private
    #@null_piece = NullPiece
  end
  
  def[](pos)
    row, col = [pos]
    @board[row][col] 

  end

  def []=(pos,val)
    row, col = [pos]
    @board[row][col] = val 
  end

  def move_piece(color, start_pos, end_pos)
    raise 'no piece here!' if @board[start_pos].empty?
    raise 'not a valid destination' if valid_pos?(end_pos)

  end

  def valid_pos?(pos)

  end

  def add_piece(piece, pos)
   pos = piece
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)

  end

  def pieces

  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)

  end





end