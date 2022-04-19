require_relative "Piece"

class Bishop < Piece


    def initialize(color, board, pos)
        super
    end

    def symbol
        return :B
    end
end