# One of the selectable attributes of dresses
# datatype is integer
class Size < ApplicationRecord
  validates :size, presence: true
  has_many :dresses
end
