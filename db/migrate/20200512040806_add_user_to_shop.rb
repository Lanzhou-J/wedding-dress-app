class AddUserToShop < ActiveRecord::Migration[6.0]
  def change
    add_reference :shops, :user, null: false, foreign_key: true
  end
end
