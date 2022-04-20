require_relative "Piece"

class Knight < Piece
    include Stepable

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :N
    end

    def move_dirs
        return KNIGHT_MOVES
    end
end