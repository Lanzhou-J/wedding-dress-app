class AddNecklineRefToDresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :dresses, :neckline, null: false, foreign_key: true
  end
end
