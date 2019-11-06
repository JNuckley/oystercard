require './lib/journey'

describe Journey do
  subject(:journey) { Journey.new }

  it { is_expected.to be_instance_of(Journey) }
end
