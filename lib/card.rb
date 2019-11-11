

class OysterCard

attr_reader :balance
attr_reader :entry_station
attr_reader :exit_station
MINIMUM_BALANCE = 1
MAXIMUM_BALANCE = 90
  # instance variable to allow balance to be used within the class
  def initialize
    @balance = 0
    @entry_station = entry_station
    @exit_station = exit_station
  end

  # deposit with single argument
  def top_up(gbp)
  fail 'Cannot exceed #{MAXIMUM_BALANCE}' if @balance + gbp > MAXIMUM_BALANCE
  @balance += gbp
  end
  # remove money from Oystercard


  def touch_in(station)
    fail "Less than £1" if @balance < MINIMUM_BALANCE
    @entry_station = station
    @exit_station = nil
  end

  def touch_out(station)
    deduct(MINIMUM_BALANCE)
    @entry_station = nil
    @exit_station = station
  end

  def in_journey?
    @entry_station
  end

  private

  def deduct(gbp)
      @balance -= gbp
  end

end
