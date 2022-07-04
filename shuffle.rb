class Shuffle
    attr_accessor :deck
    def initialize (deck)
        @deck = deck
    end

    def shuffle_deck
        deck.shuffle
    end
end
