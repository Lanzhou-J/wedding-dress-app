# One of the selectable design attributes of dresses
class Sleeve < ApplicationRecord
  validates :style, presence: true
  has_many :dresses
end
