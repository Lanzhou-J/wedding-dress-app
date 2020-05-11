class Sleeve < ApplicationRecord
  validates :style, presence: true
  has_many :dresses
end
