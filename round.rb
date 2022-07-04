
require './bet_round.rb'
require './card_distribuition.rb'

class Round 
    attr_accessor :players, :blinds
    def initialize(players, blinds)
        @players = players
        @blinds = blinds
        @pot = 0
    end

    def round_init
        card_distribuition() 
        set_table() 
    end

    def card_distribuition()
        card = CardDistribuiton.new
        players.each do |player|
            player.cards = card.before_flop
        end
    end

    def set_table()
        @players.each do |player|
            if player.position == 'SB'
                player.chips = player.chips - blinds[0] 
                @pot += blinds[0]
            end
            if player.position == 'BB'
                player.chips = player.chips - blinds[1] 
                @pot += blinds[1]
            end
        end
    end

    def player_action

    end


    def bet
    end


end