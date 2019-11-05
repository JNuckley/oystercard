class Oystercard
  attr_reader :balance
#instance variable to allow balance to be used within the class
def initialize
  @balance = 0
end
#  balance method to allow updates
def balance
  @balance
end
#  deposit with single argument
def deposit(gbp)
  @balance = @balance + gbp
end

def withdraw(gbp)
  # @balance = @balance - gbp
end
#remove money from Oystercard
end
