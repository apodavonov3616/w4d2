require_relative "Piece"

class Queen < Piece
    include Slideable

    attr_reader :symbol


    def initialize(color, board, pos)
        super
    end

    def symbol
        return :Q
    end

    def move_dirs
        CARDINAL_DIR + DIAGONAL_DIR
    end 
end