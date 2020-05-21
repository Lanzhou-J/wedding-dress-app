# One of the selectable design attributes of dresses
class Neckline < ApplicationRecord
  validates :style, presence: true
  has_many :dresses
end
