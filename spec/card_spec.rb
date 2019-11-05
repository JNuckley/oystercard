require './lib/card'

describe Oystercard do
  it 'can make an instance of the card' do
    card = Oystercard.new
    expect(card).to be_instance_of(Oystercard)
  end
  it 'can respond to a balance' do
    card = Oystercard.new
    expect(card).to respond_to(:balance)
  end
  it 'card balance should start at zero' do
    card = Oystercard.new
    expect(card.balance).to eq(0)
  end
  it 'should respond to deposit' do
    card = Oystercard.new
    expect(card).to respond_to(:deposit).with(1).argument
  end
  it 'should update the balance with deposits' do
    card = Oystercard.new
    card.deposit(15)
    expect(card.balance).to eq(15)
  end
  it 'should respond to withdraw' do
    card = Oystercard.new
    expect(card).to respond_to(:withdraw).with(1).argument
  end
  it 'should update when money is withdrawn' do
    card = Oystercard.new
    card.deposit(20)
    card.withdraw(15)
    expect(card.balance).to eq(5)
  end
  end
