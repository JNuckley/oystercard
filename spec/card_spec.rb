require './lib/card'

describe OysterCard do
  subject(:card) { OysterCard.new }

  it { is_expected.to be_instance_of(OysterCard) }

  it { is_expected.to respond_to(:balance) }

  it 'card balance should start at zero' do
    expect(card.balance).to eq(0)
  end

  it { is_expected.to respond_to(:top_up).with(1).argument }

  it 'should update the balance with deposits' do
    expect{card.top_up 1}.to change{card.balance}.by 1
  end

  it 'will not exceed maximum top-up amount 90' do
    expect{card.top_up 91}.to raise_error('Cannot exceed #{MAXIMUM_BALANCE}')
  end

  it { is_expected.to respond_to(:deduct).with(1).argument }

  it 'should update when money is withdrawn' do
    card.top_up(20)
    card.deduct(15)
    expect(card.balance).to eq(5)
  end

  
end
