class Dress < ApplicationRecord
  validates :name, presence: true  
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :color, presence: true
  validates :texture, presence: true
  validates :shipping_cost, presence: true
  belongs_to :shop
  belongs_to :size
  belongs_to :length
  belongs_to :neckline
  belongs_to :silhouette
  belongs_to :sleeve
end
