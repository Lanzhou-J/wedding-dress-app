class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :dress, null: false, foreign_key: true

      t.timestamps
    end
  end
end