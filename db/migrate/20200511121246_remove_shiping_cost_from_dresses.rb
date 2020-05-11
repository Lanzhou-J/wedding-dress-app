class RemoveShipingCostFromDresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :dresses, :shiping_cost, :integer
  end
end
