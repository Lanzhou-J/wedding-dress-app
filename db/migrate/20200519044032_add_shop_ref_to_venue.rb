class AddShopRefToVenue < ActiveRecord::Migration[6.0]
  def change
    add_reference :venues, :shop, null: false, foreign_key: true
  end
end
