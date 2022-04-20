require_relative "Piece"

class Rook < Piece
    include Slideable

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :R
    end

    def move_dirs
        return CARDINAL_DIR
    end
end