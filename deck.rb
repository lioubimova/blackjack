require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    self.cards = []
  suits = %w(Clubs Spades Diamonds Hearts)
  possible_face = %w(2..10).to_a + %w(Jack Queen King Ace)
  suits.each do |suit|
  possible_face.each do |face|
   self.cards << Cards.new(face, suit)

  end

  end
  self.cards = self.cards.shuffle
end
end
