class AddShopRefToDresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :dresses, :shop, null: false, foreign_key: true
  end
end
