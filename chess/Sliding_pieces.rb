require_relative "Piece"

module Slideable
    CARDINAL_DIR = [[0,1],[1,0], [-1,0], [0,-1]]
    DIAGONAL_DIR = [[1,1],[-1,-1], [-1,1, [1,-1]]

    def moves(position)
        possible_moves = []
        move_dirs.each do |direction|
            #iterate through card dir, for each dir, we want to have a while loop
            #while the next square is null, we can add that position and keep while loop
            #else, then make another if statement: if our piece we can't arr to possible moves, it not then we add that finally as the last move in the direction
            next_possible_moves = grow_unblocked_moves_in_dir(direction)
        end
    end

    def grow_unblocked_moves_in_dir(delta)
        dx, dy = delta
        next_possible_moves = []
        queue = []
        #while next square is null, we add in the next square until one of the variables is less than 0 or more than 7
        queue << [self[pos][0] + dx, self[pos][1] + dy]
        while !queue.empty?
            ele = queue.shift
            if ele.nil?
                next_possible_moves << ele
            else
                if ele.color != self.color
                    next_possible_moves << ele
                    break
                end
            end 
        end
    end 

    def move_dirs
        raise 'error'
    end
end

Knight.moves(starting_pos)

