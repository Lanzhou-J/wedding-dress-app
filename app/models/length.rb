# One of the selectable attributes of dresses
class Length < ApplicationRecord
  validates :length, presence: true
  has_many :dresses
end
