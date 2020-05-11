require 'rails_helper'

RSpec.describe Dress, type: :model do
  shop = Shop.create(name: 'Obride Bridal House', opening_time: Date.today, merchant_or_personal: 'merchant')

  size = Size.create(size: 8)

  length = Length.create(length: 'mini')

  neckline = Neckline.create(style: 'V-neck')

  silhouette = Silhouette.create(style: 'A-line')

  sleeve = Sleeve.create(style: 'short-sleeve')

  subject { described_class.new(
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

  it 'is not valid without a valid color' do
    subject.color = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a valid texture' do
    subject.texture = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a valid shipping cost' do
    subject.shipping_cost = nil
    expect(subject).to_not be_valid
  end

  it 'belongs to a shop' do
    relation = Dress.reflect_on_association(:shop)
    expect(relation.macro).to eql(:belongs_to)
  end

  it 'belongs to a size' do
    relation = Dress.reflect_on_association(:size)
    expect(relation.macro).to eql(:belongs_to)
  end

  it 'belongs to a length' do
    relation = Dress.reflect_on_association(:length)
    expect(relation.macro).to eql(:belongs_to)
  end

  it 'belongs to a neckline' do
    relation = Dress.reflect_on_association(:neckline)
    expect(relation.macro).to eql(:belongs_to)
  end

  it 'belongs to a silhouette' do
    relation = Dress.reflect_on_association(:silhouette)
    expect(relation.macro).to eql(:belongs_to)
  end

  it 'belongs to a sleeve' do
    relation = Dress.reflect_on_association(:sleeve)
    expect(relation.macro).to eql(:belongs_to)
  end

end