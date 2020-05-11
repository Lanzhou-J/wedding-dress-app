require 'rails_helper'

RSpec.describe Neckline, type: :model do
  subject { described_class.new(
    style: 'V-neck'
  )}

  it 'is vaild with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a style attribute' do
    subject.style = nil
    expect(subject).to_not be_valid
  end
end