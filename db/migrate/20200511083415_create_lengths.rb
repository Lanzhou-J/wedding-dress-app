class CreateLengths < ActiveRecord::Migration[6.0]
  def change
    create_table :lengths do |t|
      t.string :length

      t.timestamps
    end
  end
end
