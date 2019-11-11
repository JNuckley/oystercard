require './lib/card'

describe OysterCard do
  subject(:card) { OysterCard.new }

  it { is_expected.to be_instance_of(OysterCard) }

  it { is_expected.to respond_to(:balance) }

  it { is_expected.to respond_to(:entry_station) }

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

  it 'should update when money is withdrawn' do
    card.top_up(15)
    card.touch_out
    expect(card.balance).to eq(14)
  end
  it { is_expected.to respond_to(:touch_in) }

  it { is_expected.to respond_to(:touch_out) }

  it { is_expected.to respond_to(:in_journey?) }

  it 'touch out should return false' do
      expect(card.touch_out).to be(nil)
  end

  it 'touch_out should change in_journey value to false' do
    card.touch_out
    expect(card.entry_station).to eq(nil)
  end

  it 'should update the balance with journeys' do
    expect{card.touch_out}.to change{card.balance}.by -1
  end

  it 'should know if the card is in journey' do
    card.top_up(10)
    card.touch_in("King's cross")
    expect(card.in_journey?).to eq("King's cross")

  end
  context 'When the minimum card limit is reached' do
    minimum_balance = OysterCard::MINIMUM_BALANCE
    it 'should raise an error: Limit reached' do
      card.balance < minimum_balance
      expect { card.touch_in("King's cross") }.to raise_error("Less than £1")

    end
  end
  end
