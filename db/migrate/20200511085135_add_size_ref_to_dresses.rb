class AddSizeRefToDresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :dresses, :size, null: false, foreign_key: true
  end
end
