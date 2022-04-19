require_relative "Piece"

class Rook < Piece

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :R

    end
end