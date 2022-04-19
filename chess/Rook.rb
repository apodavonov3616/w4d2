require_relative "Piece"

class Rook < Piece

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :R
    end

    def moves(pos)
        row, col = pos
        # up = [-1,0]
        # down = [1,0]
        # right = [0,1]
        # left = [0,-1]
        
        deltas = [-1,0,1]

        next_positions = []

        deltas.each do |i|
            deltas.each do |j|
                if i.abs != j.abs
                    next_positions << [row+i, col+j]
                end
            end
        end

        next_positions
    end
end