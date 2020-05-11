require 'rails_helper'

RSpec.describe Sleeve, type: :model do
  subject {
    described_class.new(
      style: 'Short sleeves'
    )
  }

  dress = Dress.new(
    name: '2020 New style light elegant wedding dress',
    price: 80000,
    color: 'white',
    texture: 'lace',
    shop_id: 1,
    size_id: 1,
    length_id: 1,
    shipping_cost: 2000,
    neckline_id: 1,
    silhouette_id: 1,
    sleeve_id: 1
  )

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a valid style' do
    subject.style = nil
    expect(subject).to_not be_valid
  end

  it 'has many dresses' do
    relation = Sleeve.reflect_on_association(:dresses)
    expect(relation.macro).to eql(:has_many)
  end

end