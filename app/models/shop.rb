class Shop < ApplicationRecord
  validates :name, presence: true
  validates :opening_time, presence: true
  validates :merchant_or_personal, presence: true
  has_many :dresses
  belongs_to :user
end
