class RemoveIsNewFromDresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :dresses, :is_new, :boolean
  end
end
