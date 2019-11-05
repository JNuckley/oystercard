require './lib/card'

describe OysterCard do
  subject(:card) { OysterCard.new }
  it 'can make an instance of the card' do
    expect(card).to be_instance_of(OysterCard)
  end
  it 'can respond to a balance' do
    expect(card).to respond_to(:balance)
  end
  it 'card balance should start at zero' do
    expect(card.balance).to eq(0)
  end
  it 'should respond to deposit' do
    expect(card).to respond_to(:deposit).with(1).argument
  end
  it 'should update the balance with deposits' do
    card.deposit(15)
    expect(card.balance).to eq(15)
  end
  it 'should respond to withdraw' do
    expect(card).to respond_to(:withdraw).with(1).argument
  end
  it 'should update when money is withdrawn' do
    card.deposit(20)
    card.withdraw(15)
    expect(card.balance).to eq(5)
  end
end
