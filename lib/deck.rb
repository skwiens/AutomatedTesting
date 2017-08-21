
# deck.rb

require_relative 'card'

class Deck

  def initialize (values, suits)
    @cards = []
    suits.each do |suit|
      values.each do |value|
        card = Card.new(value,suit)
        
      end
    end
  end

  def draw

  end

  def shuffle
    # shuffles the deck
  end
end

values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
suits = [:hearts, :clubs, :diamonds, :spades]

deck1 = Deck.new(values, suits)
