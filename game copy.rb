require_relative 'card'
require_relative 'deck'

class Game

  attr_accessor :player_hand, :dealer_hand, :deck

  def initialize
   self.deck = Deck.new
   self.player_hand = [deck.cards.shift ,deck.cards.shift]
   self.dealer_hand = [deck.cards.shift,deck.cards.shift]

  end

  def play
    puts "Hi. I'm going to play blackjack! Press [enter] to get started ..."
     STDIN.gets
   end

   def hand_value (hand)
     hand.inject(0){|sum, card| sum + cards.value}
   end

   def bust
    hand_value(hand) > 21
      puts "lost"
    end

   def hit_or_stand
     puts"would you like to 1) hit or 2) stand?"
     action = gets.chomp.to_i
     return action
     end





 def player_hand_value

   if player_hand_value  == 21
     puts "player won!"
   elsif player_hand_value < 21
    puts "Chose to hit or to stay!"
    hit_or_stand = gets.chomp
   else bust
   end
end

   def dealer_hand_value
    if dealer_hand_value == 21
      puts "dealer won"
    elsif dealer_hand_value < 16
    puts "chose to hit or to stay!"
      hit_or_stand = gets.chomp
      else bust
        end
    end


    def winner
      if  dealer_hand_value < player_hand_value
        puts "player won"
      end
      if player_hand_value < dealer_hand_value
        puts "dealer won"

  end

    end


    game = Game.new
    game.play
