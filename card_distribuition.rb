class CardDistribuiton
    def initialize()
        @deck  = Shuffle.new(Deck.new().build_deck).shuffle_deck
    end

    

    def card
        card = @deck.shift
    end

    def before_flop
        hand = [card(), card()]
    end

    def get_flop 
        burn = card()
        flop = [card(), card(), card()]
        flop
    end

    def get_turn
        burn = card()
        turn = [card()]
        turn
    end

    def get_river
        burn = card()
        river = [card()]
        river
    end 
end