# Base product of the web app platform, can be created by shop owners
# and purchased by Users.
class Dress < ApplicationRecord

  # validation of Dress, 
  # Dress is not valid without these attributes.
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :color, presence: true
  validates :texture, presence: true
  validates :shipping_cost, presence: true

  # dress belongs to a shop
  belongs_to :shop
  
  belongs_to :size
  belongs_to :length
  belongs_to :neckline
  belongs_to :silhouette
  belongs_to :sleeve

  has_one_attached :picture
end
