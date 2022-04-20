require_relative "Piece"
# require "byebug"

module Slideable
    CARDINAL_DIR = [[0,1],[1,0], [-1,0], [0,-1]]
    DIAGONAL_DIR = [[1,1],[-1,-1], [-1,1], [1,-1]]

    def moves
        possible_moves = []
        move_dirs.each do |delta|
            # debugger
            next_possible_moves = grow_unblocked_moves_in_dir(delta)
            possible_moves += next_possible_moves
        end
        possible_moves
    end

    def grow_unblocked_moves_in_dir(delta)
        dx, dy = delta 
        cur_x, cur_y = self.pos
        next_possible_moves = []

        potential_next_pos = [cur_x + dx, cur_y + dy]
        
        while in_bound?(potential_next_pos) && self.board[potential_next_pos].nil?
            # debugger
            next_possible_moves << potential_next_pos
            potential_next_pos = [potential_next_pos[0]+dx, potential_next_pos[1]+dy]
        end
        if in_bound?(potential_next_pos)
            # debugger
            if self.color.to_s != self.board[potential_next_pos].color.to_s
                # debugger
                next_possible_moves << potential_next_pos
            end
        end

        next_possible_moves
    end 

    def in_bound?(potential_next_pos)
        x, y = potential_next_pos
        return false if x >7 || x < 0
        return false if y >7 || y < 0
        true
    end 

    def move_dirs
        raise 'error'
    end
end

# Knight.moves(starting_pos)

# current_holder = [cur_x,cur_y] 
        # while potential.nil? && potential[0] < 8 && potential[0] > -1 && potential[1] >-1 && potential[1] < 8
        #     potential = [holder[0] + dx, holder[1] + dy]
        #     holder = potential[-1]
        #     next_possible_moves << potential
        # end
        

        # queue = []
        # #iterate through card dir, for each dir, we want to have a while loop
        #     #while the next square is null, we can add that position and keep while loop
        #     #else, then make another if statement: if our piece we can't arr to possible moves, it not then we add that finally as the last move in the direction
        # #while next square is null, we add in the next square until one of the variables is less than 0 or more than 7
        # queue << [self[pos][0] + dx, self[pos][1] + dy]
        # while !queue.empty?
        #     ele = queue.shift
        #     if ele.nil?
        #         next_possible_moves << ele
        #     else
        #         if ele.color != self.color
        #             next_possible_moves << ele
        #             break
        #         end
        #     end 
        # end

        
        
