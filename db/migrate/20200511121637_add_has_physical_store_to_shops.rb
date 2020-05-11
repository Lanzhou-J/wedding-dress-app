class AddHasPhysicalStoreToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :has_physical_store, :boolean
  end
end
