class CreateSilhouettes < ActiveRecord::Migration[6.0]
  def change
    create_table :silhouettes do |t|
      t.string :style

      t.timestamps
    end
  end
end
