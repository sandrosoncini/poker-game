#!/usr/bin/env ruby

require './deck.rb'
require './shuffle.rb'
require './player.rb'
require './round.rb'
require './table_position.rb'


class Game 
    attr_accessor :deck, :num_players, :chips_start, :players, :blinds
    def initialize(num_players, chips_start, blinds)
        @num_players = num_players
        @chips_start = chips_start
        @players = []
        @blinds = blinds
    end

    def game_init
        init_position = TablePosition.new(num_players)
        init_position.define_order
        i = 0
        while num_players >= i do
            if i == 0
                players.append(Player.new(chips_start, init_position.game_positions[i]))
            else
                players.append(Player.new(chips_start, init_position.game_positions[i]))
            end
            i += 1
        end

        new_round()
    end

    
    def new_round
        @players = Round.new(@players,@blinds).round_init
    end

    
end

new_game = Game.new(4, 2000, [100,200])

p new_game.game_init



