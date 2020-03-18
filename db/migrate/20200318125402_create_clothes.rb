class CreateClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :clothes do |t|
      t.integer :price
      t.string :title
      t.text :description
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :occasion
      t.string :gender
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
