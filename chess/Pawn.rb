require_relative "Piece"

class Pawn < Piece

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :P
    end
end