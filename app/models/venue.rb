# Venue belongs to a shop, it is used to locate the shop on a map
class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  belongs_to :shop

  def owner
    shop.id
  end
end
