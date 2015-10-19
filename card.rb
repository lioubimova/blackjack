class Card

  attr_accessor :face, :suit, :value

 def initialize(face, suit)
    self.face = face.to_s
   self.suit = suit
    self.value = face
end

  def value=(face)
   if ["Jack", "Queen", "King"].include? face
      @value = 10
    elsif ["Ace"].include? face
      @value = 11
    else
      @value = face.to_i
    end

    def > (card)
      self.value > card.value
    end

 end

end
