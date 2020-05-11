class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :merchant_or_personal
      t.string :location
      t.text :description
      t.date :opening_time
      t.boolean :has_pysical_store

      t.timestamps
    end
  end
end
