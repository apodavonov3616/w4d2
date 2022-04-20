require_relative "Piece"

class Pawn < Piece

    attr_reader :symbol

    def initialize(color, board, pos)
        super
    end

    def symbol
        return :P
    end

    def moves
        possible_moves = []
        dx, dy = forward_dir
        cur_x, cur_y = self[pos]
        debugger
        one_step_forward = [cur_x + dx, cur_y + dy]
        
        if in_bound?(one_step_forward)
            if self.board[one_step_forward].nil?
                possible_moves << one_step_forward
            end
        end

        if at_start_row?
            doubled = forward_dir.map { |ele| ele * 2 } 
            two_step_forward = [cur_x + doubled[0], cur_y + doubled[1]]
            if self.board[two_step_forward].nil? && self.board[one_step_forward].nil?
                possible_moves << one_step_forward
            end
        end



        possible_moves
    end

    def forward_dir
        if self.color == "white"
            [-1,0]
        else
            [1,0]
        end        
    end

    def at_start_row?
        if self.color == "white" && self[pos][0] == 6
            return true
        elsif self.color == "black" && self[pos][0] == 1
            return true
        end
        false
    end

    def in_bound?(potential_next_pos)
        x, y = potential_next_pos
        return false if x >7 || x < 0
        return false if y >7 || y < 0
        true
    end

end