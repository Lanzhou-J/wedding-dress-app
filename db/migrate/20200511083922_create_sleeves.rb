class CreateSleeves < ActiveRecord::Migration[6.0]
  def change
    create_table :sleeves do |t|
      t.string :style

      t.timestamps
    end
  end
end
