class Silhouette < ApplicationRecord
  validates :style, presence: :true
  has_many :dresses
end
