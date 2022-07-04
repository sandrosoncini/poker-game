class Player
    attr_accessor :chips, :position, :cards
    def initialize(chips, position)
        @position = position
        @chips = chips
        @cards = []
        @status = ''
    end
end