
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      card1 = Card.new(2, :hearts)
      card2 = Card.new(10, :clubs)
      card3 = Card.new(3, :spades)
      card4 = Card.new(4, :diamonds)

      card1.to_s.must_equal "2 of hearts"
      card2.to_s.must_equal "10 of clubs"
      card3.to_s.must_equal "3 of spades"
      card4.to_s.must_equal "4 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      card1 = Card.new(11, :hearts)
      card2 = Card.new(1, :clubs)
      card3 = Card.new(13, :spades)
      card4 = Card.new(12, :diamonds)

      card1.to_s.must_equal "Jack of hearts"
      card2.to_s.must_equal "Ace of clubs"
      card3.to_s.must_equal "King of spades"
      card4.to_s.must_equal "Queen of diamonds"
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      card1 = Card.new(1, :clubs)
      card2 = Card.new(13, :spades)
      card3 = Card.new(2, :hearts)
      card4 = Card.new(10, :clubs)


      card1.value.must_equal 1
      card2.value.must_equal 13
      card3.value.must_equal 2
      card4.value.must_equal 10

      # ensure that `.value works as expected`

    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card1 = Card.new(1, :clubs)
      card2 = Card.new(13, :spades)
      card3 = Card.new(2, :hearts)
      card4 = Card.new(10, :clubs)

      card1.suit.must_equal :clubs
      card2.suit.must_equal :spades
      card3.suit.must_equal :hearts
      card4.suit.must_equal :clubs
    end
  end

end
