require 'rails_helper'

RSpec.describe Shop, type: :model do
  subject {
    described_class.new(
      name: 'Obride Bridal House',
      merchant_or_personal: 'merchant',
      location: 'China',
      opening_time: Date.today,
      has_physical_store: true
    )
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a valid name' do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a valid opening time' do 
    subject.opening_time = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a valid choice of merchant_or_personal' do 
    subject.merchant_or_personal = nil
    expect(subject).to_not be_valid
  end

end