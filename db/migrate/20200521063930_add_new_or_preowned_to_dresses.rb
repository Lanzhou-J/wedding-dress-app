class AddNewOrPreownedToDresses < ActiveRecord::Migration[6.0]
  def change
    add_column :dresses, :new_or_preowned, :string
  end
end
