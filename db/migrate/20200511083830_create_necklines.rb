class CreateNecklines < ActiveRecord::Migration[6.0]
  def change
    create_table :necklines do |t|
      t.string :style

      t.timestamps
    end
  end
end
