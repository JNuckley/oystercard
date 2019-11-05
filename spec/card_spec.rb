require './lib/card'

describe OysterCard do
  it 'can make an instance of the card' do
    card = OysterCard.new
    expect(card).to be_instance_of(OysterCard)
  end
  it 'can respond to a balance' do
    card = OysterCard.new
    expect(card).to respond_to(:balance)
  end
  it 'card balance should start at zero' do
    card = OysterCard.new
    expect(card.balance).to eq(0)
  end
  it 'should respond to deposit' do
    card = OysterCard.new
    expect(card).to respond_to(:deposit).with(1).argument
  end
  it 'should update the balance with deposits' do
    card = OysterCard.new
    card.deposit(15)
    expect(card.balance).to eq(15)
  end
  it 'should respond to withdraw' do
    card = OysterCard.new
    expect(card).to respond_to(:withdraw).with(1).argument
  end
  it 'should update when money is withdrawn' do
    card = OysterCard.new
    card.deposit(20)
    card.withdraw(15)
    expect(card.balance).to eq(5)
  end
end
