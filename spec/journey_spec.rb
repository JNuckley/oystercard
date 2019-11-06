require './lib/journey'

describe Journey do
  subject(:journey) { Journey.new }

  it { is_expected.to be_instance_of(Journey) }

  it { is_expected.to respond_to(:in_journey) }

  it { is_expected.to respond_to(:touch_in) }
end
