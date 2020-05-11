class Length < ApplicationRecord
  validates :length, presence: true
  has_many :dresses
end
