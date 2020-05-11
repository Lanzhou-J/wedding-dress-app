class AddLengthRefToDresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :dresses, :length, null: false, foreign_key: true
  end
end
