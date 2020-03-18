class RemovePriceFromClothes < ActiveRecord::Migration[6.0]
  def change

    remove_column :clothes, :price, :data_type
  end
end
