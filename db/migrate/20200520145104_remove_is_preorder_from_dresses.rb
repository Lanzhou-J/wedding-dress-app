class RemoveIsPreorderFromDresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :dresses, :is_preorder, :boolean
  end
end
