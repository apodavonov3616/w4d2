require_relative "Piece"

class Bishop < Piece
    include Slideable

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :B
    end

    def move_dirs
        DIAGONAL_DIR
    end

end