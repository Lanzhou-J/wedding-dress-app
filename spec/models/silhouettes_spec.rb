require 'rails_helper'

RSpec.describe Silhouette, type: :model do
  subject {
    described_class.new(
      style: 'A-line'
    )
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a valid style' do
    subject.style = nil
    expect(subject).to_not be_valid
  end

end