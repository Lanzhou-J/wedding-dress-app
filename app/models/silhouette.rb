# One of the selectable design attributes of dresses
class Silhouette < ApplicationRecord
  validates :style, presence: true
  has_many :dresses
end
