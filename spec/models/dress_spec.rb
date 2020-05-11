require 'rails_helper'

RSpec.describe Dress, type: :model do
  subject { described_class.new(
    name: '2020 New style light elegant wedding dress',
    price: 80000
  )}

  it 'is vaild with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a price less than one cent' do
    subject.price = 0
    expect(subject).to_not be_valid
  end
end