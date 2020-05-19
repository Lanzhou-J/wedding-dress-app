class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  belongs_to :shop

  def owner
    shop.id
  end
end
