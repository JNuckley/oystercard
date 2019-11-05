require './lib/card'

describe Oystercard do
  it 'can find a balance' do
    card = Oystercard.new
    expect(card).to respond_to(balance)
  end
end
