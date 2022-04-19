class Board

    attr_accessor :grid

    def initialize
        @grid = Array.new(8) { Array.new(8, nil) }
        Board.populate
    end

    def self.populate
        array = [ :R, :N, :B, :Q, :K, :B, :N, :R]
        (0...8).each do |piece|
            ele.new()
        end
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
        raise 'cannot move to end_pos' if #how to find out if piece can move there
        self[start_pos] = nil
        self[end_pos] = #how to get access to piece to move it
    end
end

# b = Board.new
# b.grid

