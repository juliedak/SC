class AddUserReferencesToClothes < ActiveRecord::Migration[6.0]
  def change
    add_reference :clothes, :user, null: false, foreign_key: true
  end
end
