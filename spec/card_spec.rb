require './lib/card'

describe Oystercard do
  it 'can make an instance of the card' do
    card = Oystercard.new
    expect(card).to be_instance_of(Oystercard)
  end
  it 'can respond to a balanace' do
    card = Oystercard.new
    expect(card).to respond_to(:balance)
  end

  end
  # it 'can find a balance' do
  #   card = Oystercard.new
  #   expect(card.balance).to respond_to(c)
  # end
