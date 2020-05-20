class RemoveInventoryFromDresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :dresses, :inventory, :integer
  end
end
