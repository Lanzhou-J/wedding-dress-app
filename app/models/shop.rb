class Shop < ApplicationRecord
  validates :name, presence: true
  validates :opening_time, presence: true
  validates :merchant_or_personal, presence: true
  has_many :dresses, dependent: :destroy
  belongs_to :user
  enum merchant_or_personal: { merchant: 0, personal: 1 }

  has_one_attached :picture
  after_create :create_venue

  has_one :venue

  private

  def create_venue
    venue = Venue.new(name: self.name, address: self.location, shop: self)
    venue.save
  end
end
