require_relative "Piece"

class Queen < Piece

    attr_reader :symbol


    def initialize(color, board, pos)
        super
    end

    def symbol
        return :Q
    end
end