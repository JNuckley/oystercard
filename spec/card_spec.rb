require './lib/card'

describe OysterCard do
  subject(:card) { OysterCard.new }
  
  it { is_expected.to be_instance_of(OysterCard) }

  it { is_expected.to respond_to(:balance) }

  it 'card balance should start at zero' do
    expect(card.balance).to eq(0)
  end

  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'should update the balance with deposits' do
    card.deposit(15)
    expect(card.balance).to eq(15)
  end

  it { is_expected.to respond_to(:withdraw).with(1).argument }

  it 'should update when money is withdrawn' do
    card.deposit(20)
    card.withdraw(15)
    expect(card.balance).to eq(5)
  end
end
