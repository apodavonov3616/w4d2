require 'colorize'
require_relative 'Sliding_pieces'
require_relative "stepable_pieces"


class Piece

    attr_reader :color, :pos, :board

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def [](pos)
        row, col = pos
        board.grid[row][col]
    end

    def []=(pos,val)
        row, col = pos
        board.grid[row][col] = val
    end

    

end