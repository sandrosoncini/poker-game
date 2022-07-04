class TablePosition 
    attr_accessor :game_positions
    def initialize (num_players)
        @positions = ['D', 'BB', 'SB', 'UTG', 'UTG_1', 'MP', 'LJ', 'HJ', 'CT']
        @num_players = num_players
        @game_positions = []
    end

    def define_order 
        i = 0 
        while @num_players > i do
            @game_positions.append(@positions[i])
            i += 1
        end
    end

end