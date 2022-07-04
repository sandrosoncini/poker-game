class Deck 
    attr_reader :deck, :numbers, :suits
    def initialize()
        @numbers = ['A','K','Q','J','T','9','8','7','6','5','4','3','2']
        @suits = ['s','h','c','d']
    end

    def build_deck
        deck = []
        suits.each do |suit|
            numbers.each do |num|
                deck.append(num + suit)
            end
        end
        deck
    end  
end


