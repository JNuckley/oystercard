

class OysterCard

attr_reader :balance
attr_accessor :in_journey

MINIMUM_BALANCE = 1
MAXIMUM_BALANCE = 90
  # instance variable to allow balance to be used within the class
  def initialize
    @balance = 0
    @in_journey = false
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

  def touch_in
    fail "Less than £1" if @balance < MINIMUM_BALANCE
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end
end
