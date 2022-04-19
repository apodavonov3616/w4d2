require_relative "Piece"

require 'singleton'

class NullPiece < Piece 
    include Singleton
    def initialize(symbol, moves)
        @symbol = symbol
        @moves = moves
    end
end