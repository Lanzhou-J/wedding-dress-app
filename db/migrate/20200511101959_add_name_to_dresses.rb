class AddNameToDresses < ActiveRecord::Migration[6.0]
  def change
    add_column :dresses, :name, :string
  end
end
