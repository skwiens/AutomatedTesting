
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if value > 13
      raise ArgumentError.new "Value cannot be higher than 13"
    end

    if value < 1
      raise ArgumentError.new "Value cannot be lower than 1"
    end

    unless [:hearts, :spades, :clubs, :diamonds].include?(suit)
      raise ArgumentError.new "Not a correct suit"
    end

    @value = value
    @suit = suit
  end

  def to_s
    if value < 11 && value > 1
      return "#{value} of #{suit.to_s}"
    elsif value == 1 || (value > 10 && value < 14)
      case value
      when 1
        face = "Ace"
      when 11
        face = "Jack"
      when 12
        face = "Queen"
      when 13
        face = "King"
      else
        raise ArgumentError.new "Not a valid suit"
      end

      "#{face} of #{suit.to_s}"
    end
    #write a statement that returns face card values.
  end

end


# card1 = Card.new(1, :clubs)
# card2 = Card.new(3, :hearts)
#
# puts card1.value
# puts card1.suit
#
# puts card2.value
# puts card2.suit
