class AddDressKeyToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :dress_key, :string
  end
end
