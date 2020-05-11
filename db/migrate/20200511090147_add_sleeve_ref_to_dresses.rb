class AddSleeveRefToDresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :dresses, :sleeve, null: false, foreign_key: true
  end
end
