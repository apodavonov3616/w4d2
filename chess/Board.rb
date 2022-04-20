require 'byebug'
require_relative 'pipefile'

class Board

    attr_accessor :grid

    def initialize
        @grid = Array.new(8) { Array.new(8, nil) }
        populate
    end

    def populate
        array = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        pawn_rows = [1, 6]

        array.each_with_index do |piece, i|
            @grid[0][i] = piece.new("black", self, [0, i])
        end

        array.each_with_index do |piece, i|
            @grid[7][i] = piece.new("white", self, [7, i])
        end

        # pawn_rows.each do |row|
        #     (0..7).each do |col|
        #         if row == 1
        #             @grid[row][col] = Pawn.new("black", self, [row,col])
        #         else
        #             @grid[row][col] = Pawn.new("white", self, [row,col])
        #         end
        #     end
        # end
        
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @grid[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        raise 'no piece at starting position' if self[start_pos] == nil
        # raise 'cannot move to end_pos' if #how to find out if piece can move there
        
        self[end_pos] = self[start_pos]
        self[start_pos] = nil #remember to change to nullpiece
    end

    def render
        printed_board = @grid.map do |row|
            colors = row.map do |piece|
                if piece.nil?
                    :X
                else
                    if piece.color == "black"
                        piece.symbol.to_s.blue
                    else
                        piece.symbol.to_s.red
                    end
                end
            end
            puts colors.join(' ')
        end
        printed_board
    end
end

# b = Board.new
# # p b.grid
# p b.render

# b.move_piece([6,0], [4,0])

# p b.render

