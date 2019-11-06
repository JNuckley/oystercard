class OysterCard
  attr_reader :balance

  # instance variable to allow balance to be used within the class
  def initialize
    @balance = 0
  end

  # deposit with single argument
  def top_up(gbp)
    @balance += gbp
  end

  # remove money from Oystercard
  def withdraw(gbp)
    @balance -= gbp
  end
end
