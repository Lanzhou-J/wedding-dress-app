class CreateCartDresses < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_dresses do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :dress, null: false, foreign_key: true

      t.timestamps
    end
  end
end
