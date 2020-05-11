class AddSilhouetteRefToDresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :dresses, :silhouette, null: false, foreign_key: true
  end
end
