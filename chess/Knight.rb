require_relative "Piece"

class Knight < Piece

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :N
    end
end