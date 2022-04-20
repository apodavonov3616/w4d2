require_relative "Piece"

class King < Piece
    include Stepable

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :K
    end

    # def move_dirs
    #     return KING_MOVES
    # end
end