class AddIsNewToDresses < ActiveRecord::Migration[6.0]
  def change
    add_column :dresses, :is_new, :boolean
  end
end
