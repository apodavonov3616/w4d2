class Board

    attr_accessor :grid

    def initialize
        @grid = Array.new(8) { Array.new(8, nil) }
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @grid[row][col] = val
    end
end

# b = Board.new
# b.grid

