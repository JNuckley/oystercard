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
  it 'card balance should start at zero' do
    card = Oystercard.new
    expect(card.balance).to eq(0)
  end
  end
