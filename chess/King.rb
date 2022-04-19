require_relative "Piece"

class King < Piece

    attr_reader :symbol


    def initialize(color, board, pos)
        super
    end

    def symbol
        return :K

    end
end