class RemoveHasPysicalStoreFromShops < ActiveRecord::Migration[6.0]
  def change
    remove_column :shops, :has_pysical_store, :boolean
  end
end
