require './lib/card'

describe OysterCard do
  subject(:card) { OysterCard.new }

  it { is_expected.to be_instance_of(OysterCard) }

  it { is_expected.to respond_to(:balance) }

  it { is_expected.to respond_to(:in_journey) }

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
  it { is_expected.to respond_to(:touch_in) }

  it { is_expected.to respond_to(:touch_out) }

  # it 'touch_in should return true' do
  #   expect(journey.touch_in).to be(true)
  # end

  it 'touch out should return false' do
      expect(card.touch_out).to be(false)
  end

  #   it 'touch_in should change in_journey value to true' do
  #     journey.touch_in
  #     expect(journey.in_journey).to eq(true)
  # end

  it 'touch_out should change in_journey value to false' do
    card.touch_out
    expect(card.in_journey).to eq(false)
  end

  context 'When the minimum card limit is reached' do
    minimum_balance = OysterCard::MINIMUM_BALANCE
    it 'should raise an error: Limit reached' do
      card.balance < minimum_balance
      expect { card.touch_in }.to raise_error("Less than £1")
    end
  end
  end
