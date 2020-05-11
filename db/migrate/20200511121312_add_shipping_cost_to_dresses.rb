class AddShippingCostToDresses < ActiveRecord::Migration[6.0]
  def change
    add_column :dresses, :shipping_cost, :integer
  end
end
