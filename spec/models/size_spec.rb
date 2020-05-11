require 'rails_helper'

RSpec.describe Size, type: :model do
  subject {
    described_class.new(
      size: 6
    )
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a valid size' do
    subject.size = nil
    expect(subject).to_not be_valid
  end

end