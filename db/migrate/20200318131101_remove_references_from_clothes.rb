class RemoveReferencesFromClothes < ActiveRecord::Migration[6.0]
  def change

    remove_column :clothes, :references, :data_type
  end
end
