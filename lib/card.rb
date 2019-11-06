class OysterCard
  attr_reader :balance
MAXIMUM_BALANCE = 90
  # instance variable to allow balance to be used within the class
  def initialize
    @balance = 0
  end

  # deposit with single argument
  def top_up(gbp)
  fail 'Cannot exceed #{MAXIMUM_BALANCE}' if @balance + gbp > MAXIMUM_BALANCE
  @balance += gbp
  end
  # remove money from Oystercard
  def deduct(gbp)
    @balance -= gbp
  end
end
