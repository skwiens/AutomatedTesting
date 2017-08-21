

require_relative 'spec_helper'

describe Deck do
  before do
    values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    suits = [:hearts, :clubs, :diamonds, :spades]

    @deck1 = Deck.new([values], [suits])
  end

  describe "You can create a deck instance" do
    it "Can be created" do

      @deck1.must_be_instance_of Deck
    end

    it "Contains 52 Card objects that are unique" do

      @deck1.cards.length.must_equal 52

    end
  end
end


  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
