require_relative "Piece"

module Stepable
    KNIGHT_MOVES = [[-1,-2], [-1,2], [1,-2], [1,2], [-2,-1], [-2,1], [2,-1], [2,1] ]

    KING_MOVES = [ [1,1], [-1,-1], [-1,1], [1,-1], [0,1], [1,0], [-1,0], [0,-1] ]

    def moves
        possible_moves = []
        move_dirs.each do |delta|
            # debugger
            dx, dy = delta 
            cur_x, cur_y = self.pos
            potential_next_pos = [cur_x + dx, cur_y + dy]
            if in_bound?(potential_next_pos)
                # debugger
                if self.board[potential_next_pos].nil? || self.color.to_s != self.board[potential_next_pos].color.to_s
                    possible_moves << potential_next_pos
                end
            end
        end
        # debugger
        possible_moves
    end

    def in_bound?(potential_next_pos)
        x, y = potential_next_pos
        return false if x >7 || x < 0
        return false if y >7 || y < 0
        true
    end

    def move_dirs
        raise "Error"
    end

end


#right now we have a piece calling Knight.moves(current_pos)