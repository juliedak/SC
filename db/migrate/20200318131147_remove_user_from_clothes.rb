class RemoveUserFromClothes < ActiveRecord::Migration[6.0]
  def change

    remove_column :clothes, :user, :data_type
  end
end
