class CreateDresses < ActiveRecord::Migration[6.0]
  def change
    create_table :dresses do |t|
      t.string :brand
      t.integer :price
      t.integer :shiping_cost
      t.text :description
      t.boolean :is_sold
      t.boolean :is_preorder
      t.string :color
      t.string :texture

      t.timestamps
    end
  end
end
