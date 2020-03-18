class AddPhotoToClothes < ActiveRecord::Migration[6.0]
  def change
    add_column :clothes, :photo, :string
  end
end
