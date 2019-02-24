class Poker
  attr_accessor :hand1, :hand2
  def initialize(hand1, hand2 = 0)
    @hand1 = hand1
    @hand2 = hand2
  end

  def best_hand
    if hand2 == 0
      hand1
    end
  end
end