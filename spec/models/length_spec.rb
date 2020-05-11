require 'rails_helper'

RSpec.describe Length, type: :model do
  subject { described_class.new(
    length: 'short/mini'
  )}

  it 'is vaild with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a length attribute' do
    subject.length = nil
    expect(subject).to_not be_valid
  end
end